part of 'reset_pswd_cubit.dart';

@freezed
abstract class ResetPswdState with _$ResetPswdState {
  const factory ResetPswdState({
    required Email email,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessage,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _ResetPswdState;

  factory ResetPswdState.initial() => ResetPswdState(
        email: Email(''),
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.disabled,
        authFailureOrSuccess: none(),
      );
}
