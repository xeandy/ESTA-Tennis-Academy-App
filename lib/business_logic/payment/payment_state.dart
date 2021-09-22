part of 'payment_cubit.dart';

@freezed
abstract class PaymentState with _$PaymentState {
  const factory PaymentState({
    required FirestoreFailure firestoreFailure,
    required UserData userData,
    required Map<String, dynamic>? paymentSheetData,
    required bool isSuccesfull,
    required bool isStripeException,
    required String stripeException,
    required bool isNotComplete,
  }) = _PaymentState;

  factory PaymentState.initial() => PaymentState(
        firestoreFailure: FirestoreFailure.none(),
        userData: UserData.empty(),
        paymentSheetData: null,
        isSuccesfull: false,
        stripeException: '',
        isStripeException: false,
        isNotComplete: false,
      );
}
