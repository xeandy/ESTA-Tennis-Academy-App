part of 'drop_button_cubit.dart';

@freezed
abstract class DropButtonState2 with _$DropButtonState2 {
  const factory DropButtonState2({
    required List<Program> programs,
    required List<Session> sessions,
    required FirestoreFailure firestoreFailure,
    required String? sessionValue,
    required int price,
    required String? programName,
  }) = _DropButtonState2;

  factory DropButtonState2.initial() => DropButtonState2(
        programs: [],
        sessions: [],
        firestoreFailure: FirestoreFailure.none(),
        sessionValue: null,
        price: 0,
        programName: null,

      );
}
