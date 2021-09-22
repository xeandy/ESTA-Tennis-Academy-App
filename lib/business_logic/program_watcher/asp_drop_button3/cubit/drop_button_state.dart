part of 'drop_button_cubit.dart';

@freezed
abstract class DropButtonState3 with _$DropButtonState3 {
  const factory DropButtonState3({
    required List<Program> programs,
    required List<Session> sessions,
    required FirestoreFailure firestoreFailure,
    required String? sessionValue,
    required String? programName,
    required int price,
  }) = _DropButtonState3;

  factory DropButtonState3.initial() => DropButtonState3(
        programs: [],
        sessions: [],
        firestoreFailure: FirestoreFailure.none(),
        sessionValue: null,
        price: 0,
        programName: null,
      );
}
