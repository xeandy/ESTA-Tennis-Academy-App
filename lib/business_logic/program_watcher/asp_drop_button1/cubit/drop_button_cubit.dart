import 'dart:async';

import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/program/i_program_repository.dart';
import 'package:academy_app/model/program/program.dart';
import 'package:academy_app/model/program/session.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'drop_button_state.dart';
part 'drop_button_cubit.freezed.dart';

@injectable
class DropButtonCubit1 extends Cubit<DropButtonState1> {
  final IProgramRepo iProgramRepo;

  DropButtonCubit1(this.iProgramRepo) : super(DropButtonState1.initial());
  StreamSubscription? streamSubscription;
  String? sessionValue;

  Future<void> getPrograms() async {
    streamSubscription = iProgramRepo.getPrograms().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => state.copyWith(firestoreFailure: failure),
            (asp) => state.copyWith(programs: asp),
          ),
        );
      },
    );
  }

  void onChangedProgramName(String value) {
    sessionValue = null;
    emit(state.copyWith(
      programName: value,
      price: 0,
    ));
  }

  void clearDropButton() {
    sessionValue = null;
    emit(
      state.copyWith(
        price: 0,
        programName: null,
      ),
    );
  }

  void onChangedSessionValue(String? value) {
    sessionValue = value;
    emit(state.copyWith(sessionValue: value));
  }

  void setAspPrice({required int price}) {
    emit(state.copyWith(price: price));
  }

  void setSessionList(List<Session> sessions) {
    emit(state.copyWith(sessions: sessions));
  }
   void resetDropBtn() {
    sessionValue = null;
    emit(state.copyWith(
      programName: null,
      price: 0,
    ));
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
