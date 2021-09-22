part of 'drop_button_cubit.dart';

@freezed
abstract class DropButtonState1 with _$DropButtonState1 {
  const factory DropButtonState1({
    required List<Program> programs,
    required List<Session> sessions,
    required FirestoreFailure firestoreFailure,
    required String? sessionValue,
    required String? programName,
    required int price,
  }) = _DropButtonState1;

  factory DropButtonState1.initial() => DropButtonState1(
        programs: [],
        sessions: [],
        firestoreFailure: FirestoreFailure.none(),
        sessionValue: null,
        price: 0,
        programName: null,
      );
}
