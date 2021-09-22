part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required Email email,
    required Password password,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessage,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: Email(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.disabled,
        authFailureOrSuccess: none(),
      );
}
