part of 'sign_up_cubit.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required Email email,
    required Password password,
    required UserName userName,
    required PhoneNumber phoneNumber,
    required ConfirmPassword confirmPassword,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessage,
    required AutovalidateMode showApplicationErrorMessage,
    required ApplicationForm applicationForm,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        email: Email(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('', Password('')),
        userName: UserName(''),
        phoneNumber: PhoneNumber(''),
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.disabled,
        applicationForm: ApplicationForm.empty(),
        authFailureOrSuccess: none(),
        showApplicationErrorMessage: AutovalidateMode.disabled,
      );
}
