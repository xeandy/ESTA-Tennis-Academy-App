import 'dart:async';

import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/program/i_program_repository.dart';
import 'package:academy_app/model/program/additional_service.dart';
import 'package:academy_app/model/program/program.dart';
import 'package:academy_app/model/program/full_day.dart';
import 'package:academy_app/model/program/session.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'program_watcher_state.dart';
part 'program_watcher_cubit.freezed.dart';

@injectable
class ProgramWatcherCubit extends Cubit<ProgramWatcherState> {
  final IProgramRepo iProgramRepo;
  ProgramWatcherCubit(this.iProgramRepo) : super(ProgramWatcherState.initial());

  StreamSubscription? streamSubscription;
  String? sessionValue;
  String? fitnessSessionValue;
  String? sessionValue2;

  String? campProgramvalue;
  String? progName;

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

  Future<void> getMemmberOfAspPrice() async {
    streamSubscription = iProgramRepo.getMemmberOfAspPrice().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => state.copyWith(firestoreFailure: failure),
            (aspMember) => state.copyWith(aspMember: aspMember),
          ),
        );
      },
    );
  }

  Future<void> getNoneMemberPrice() async {
    streamSubscription = iProgramRepo.getNoneMemberPrice().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => state.copyWith(firestoreFailure: failure),
            (nonMember) => state.copyWith(nonMember: nonMember),
          ),
        );
      },
    );
  }

  Future<void> getFullDayPrice() async {
    streamSubscription = iProgramRepo.getFullDayCampPrice().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => state.copyWith(firestoreFailure: failure),
            (fullDay) => state.copyWith(fullDay: fullDay),
          ),
        );
      },
    );
  }

  Future<void> getFitnessPrice() async {
    streamSubscription = iProgramRepo.getFitnessPrice().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => state.copyWith(firestoreFailure: failure),
            (fitness) => state.copyWith(fitness: fitness),
          ),
        );
      },
    );
  }

  Future<void> getPtlPrice() async {
    streamSubscription = iProgramRepo.getPtlPrice().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => state.copyWith(firestoreFailure: failure),
            (ptl) => state.copyWith(ptl: ptl),
          ),
        );
      },
    );
  }

  Future<void> getPflPrice() async {
    streamSubscription = iProgramRepo.getPflPrice().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => state.copyWith(firestoreFailure: failure),
            (pfl) => state.copyWith(pfl: pfl),
          ),
        );
      },
    );
  }

  void setSessionList(List<Session> sessions) {
    emit(state.copyWith(sessions: sessions));
  }

  void setFitnessSessionList(List<Session> sessions) {
    if (state.isVisible == false) {
      emit(
        state.copyWith(
          fitnessSession: sessions,
          isVisible: true,
          isFitness: true,
        ),
      );
    } else {
      fitnessSessionValue = null;
      emit(
        state.copyWith(
          fitnessSession: [],
          isVisible: false,
          isFitness: false,
          fitnessPrice: state.fitnessPrice,
          totalPrice: state.groupPrice - state.fitnessPrice,
        ),
      );
    }
  }

  void setAspPrice({
    required int groupPrice,
  }) {
    emit(
      state.copyWith(
        totalPrice: groupPrice,
      ),
    );
  }

  void setCampPrice({required int groupPrice}) {
    emit(
      state.copyWith(
        groupPrice: groupPrice,
        totalPrice: groupPrice,
      ),
    );
  }

  void setFitnessPrice({required int fitnessPrice}) {
    emit(
      state.copyWith(
        fitnessPrice: state.fitnessPrice,
        totalPrice: state.groupPrice + fitnessPrice,
      ),
    );
  }

  void onChanged(String? value) {
    sessionValue = value;
    // emit(state.copyWith(
    //   sessionValue: value,
    // ));
  }

  void setProgramName(String value) {
    progName = value;

    // emit(state.copyWith(
    //   programName: value,
    // ));
  }

  void onChangedFitnessPrice(String? value) {
    fitnessSessionValue = value;
  }

  void onChangedCampProgramName(
    String? value,
  ) {
    campProgramvalue = value;
    sessionValue = null;
  }

  void radioButtonOnChanged({
    required int value,
    required List<Program> groupList,
  }) {
    sessionValue = null;
    campProgramvalue = null;
    fitnessSessionValue = null;
    emit(
      state.copyWith(
        radioButtonGroupValue: value,
        groupList: groupList,
        sessions: [],
        isVisible: false,
        fitnessSession: [],
        isFullDay: false,
        isFitness: false,
        totalPrice: 0,
      ),
    );
  }

  void setFullDayPrice(int fullDayPrice) {
    emit(
      state.copyWith(
        totalPrice: fullDayPrice,
        isFullDay: true,
        isFitness: false,
      ),
    );
  }

  void ptlRadioBtn(int value, int ptlPrice, String ptlTimes) {
    emit(
      state.copyWith(
        ptlGroupValue: value,
        ptlPrice: ptlPrice,
        totalPrice: state.pflPrice + ptlPrice,
        ptlTimes: ptlTimes,
      ),
    );
  }

  void pflRadioBtn(int value, int pflPrice, String pflTimes) {
    emit(
      state.copyWith(
        pflGroupValue: value,
        pflPrice: pflPrice,
        totalPrice: state.ptlPrice + pflPrice,
        pflTimes: pflTimes,
      ),
    );
  }

  void unselectRadoBtn() {
    emit(
      state.copyWith(
        ptlTimes: '',
        pflTimes: '',
        pflGroupValue: 0,
        ptlGroupValue: 0,
        totalPrice: 0,
      ),
    );
  }

  void resetAspState() {
    sessionValue = null;
    progName = null;
    emit(state.copyWith(programName: null, totalPrice: 0));
  }

  void resetCampState() {
    sessionValue = null;
    campProgramvalue = null;
    fitnessSessionValue = null;
    emit(
      state.copyWith(
        radioButtonGroupValue: 0,
        groupList: [],
        sessions: [],
        isVisible: false,
        fitnessSession: [],
        isFullDay: false,
        isFitness: false,
        totalPrice: 0,
      ),
    );
  }

  void resetAdtServiceState() {
    emit(state.copyWith(
      pflGroupValue: 0,
      ptlGroupValue: 0,
      totalPrice: 0,
      ptlTimes: '',
      pflTimes: '',
    ));
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
