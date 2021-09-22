import 'dart:async';
import 'dart:convert';

import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:academy_app/model/user_data/programs/profile_adtService.dart';
import 'package:academy_app/model/user_data/programs/profile_asp.dart';
import 'package:academy_app/model/user_data/programs/profile_camp.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  final IUserRepo iUserRepo;
  PaymentCubit(this.iUserRepo) : super(PaymentState.initial());
  StreamSubscription? streamSubscription;

  Map<String, dynamic>? paymentSheetData;

  Future<void> getUserData() async {
    streamSubscription = iUserRepo.getUserData().listen((failureOrSuccess) {
      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(firestoreFailure: failure),
        ),
        (userData) => emit(
          state.copyWith(userData: userData),
        ),
      );
    });
  }

  Future<void> updateProfileAsp({
    required String programName,
    required String times,
    required int price,
    required UserData userData,
  }) async {
    emit(state.copyWith(isSuccesfull: false));
    state.userData.asp.add(
      ProfileAsp(
        programName: programName,
        times: times,
        price: price,
        status: true,
        id: Uuid().v1(),
      ),
    );
    await iUserRepo.updateProfileAsp(userData: userData).whenComplete(
          () => emit(
            state.copyWith(
              userData: userData.copyWith(asp: []),
              isSuccesfull: false,
            ),
          ),
        );
  }

  void addProgram({
    required String programName,
    required String times,
    required int price,
    required UserData userData,
  }) {
    state.userData.asp.add(
      ProfileAsp(
        programName: programName,
        times: times,
        price: price,
        status: true,
        id: Uuid().v1(),
      ),
    );
  }

  void deleteprogram() {
    state.userData.asp.removeLast();
  }

  Future<void> updateProfileCamp({
    required String groupName,
    required String times,
    required int price,
    required bool fitness,
    required String fitnessTimes,
    required bool fullDay,
    required UserData userData,
  }) async {
    emit(state.copyWith(isSuccesfull: false));

    state.userData.camp.add(
      ProfileCamp(
        groupName: groupName,
        times: times,
        fitness: fitness,
        fitnessTimes: fitnessTimes,
        fullDay: fullDay,
        price: price,
        status: true,
      ),
    );
    await iUserRepo.updateProfileCamp(userData: userData).whenComplete(
          () => emit(
            state.copyWith(
              userData: userData.copyWith(camp: []),
              isSuccesfull: false,
            ),
          ),
        );
  }

  Future<void> updateProfileAdtService({
    required String ptlTimes,
    required String pflTimes,
    required int price,
    required UserData userData,
  }) async {
    emit(state.copyWith(isSuccesfull: false));

    state.userData.adtService.add(
      ProfileAdtService(
        ptlTimes: ptlTimes,
        pflTimes: pflTimes,
        price: price,
        status: true,
      ),
    );
    await iUserRepo.updateProfileAdtService(userData: userData).whenComplete(
          () => emit(
            state.copyWith(
              userData: userData.copyWith(adtService: []),
              isSuccesfull: false,
            ),
          ),
        );
  }

  Future<void> initPaymentSheet({
    required String programName,
    required UserData userData,
    required int totalAmount,
  }) async {
    if (totalAmount != 0) {
      try {
        paymentSheetData = await createPaymentSheet(
          programName: programName,
          userData: userData,
          totalAmount: totalAmount,
        );

        emit(state.copyWith(
          paymentSheetData: paymentSheetData,
          isStripeException: false,
          isNotComplete: false,
        ));

        await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
            merchantCountryCode: 'US',
            merchantDisplayName: 'ESTA Academy',
            applePay: true,
            paymentIntentClientSecret: state.paymentSheetData!['paymentIntent'],
            customerEphemeralKeySecret: state.paymentSheetData!['ephemeralKey'],
          ),
        );

        displayPaymentSheet();
      } catch (e) {
        print(e);
      }
    } else {
      return emit(
        state.copyWith(isNotComplete: true),
      );
    }
  }

  Future<void> displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet(
        parameters: PresentPaymentSheetParameters(
          clientSecret: state.paymentSheetData!['paymentIntent'],
          confirmPayment: true,
        ),
      );
      emit(
        state.copyWith(
          isSuccesfull: true,
          paymentSheetData: null,
        ),
      );
    } on StripeException catch (e) {
      emit(
        state.copyWith(
          isStripeException: true,
          stripeException: e.error.localizedMessage!,
          paymentSheetData: null,
          isSuccesfull: false,
        ),
      );
    }
  }

  Future<Map<String, dynamic>> createPaymentSheet({
    required String programName,
    required UserData userData,
    required int totalAmount,
  }) async {
    final url = Uri.parse(
        'https://us-central1-esta-academy-ios.cloudfunctions.net/create_payment_intent');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        {
          "amount": totalAmount * 100,
          "description": programName,
          "email": userData.email.getOrCrash(),
          "name": userData.userName!.getOrCrash(),
        },
      ),
    );

    return jsonDecode(response.body);
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
