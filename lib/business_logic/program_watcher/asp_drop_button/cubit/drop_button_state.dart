part of 'drop_button_cubit.dart';

@freezed
abstract class DropButtonState with _$DropButtonState {
  const factory DropButtonState({
    required List<Program> programs,
    required List<Session> sessions,
    required FirestoreFailure firestoreFailure,
    required String? sessionValue,
    required String? programName,
    required int price,
  }) = _DropButtonState;

  factory DropButtonState.initial() => DropButtonState(
        programs: [],
        sessions: [],
        firestoreFailure: FirestoreFailure.none(),
        sessionValue: null,
        price: 0,
        programName: null,
      );
}
