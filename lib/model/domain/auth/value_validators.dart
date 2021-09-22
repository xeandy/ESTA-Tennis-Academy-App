import 'package:academy_app/model/domain/auth/value_failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String inputEmail) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(inputEmail)) {
    return right(inputEmail);
  } else {
    return left(ValueFailure.invalidEmail(invalidEmail: inputEmail));
  }
}

Either<ValueFailure<String>, String> validatePassword(String inputPassword) {
  if (inputPassword.length >= 6) {
    return right(inputPassword);
  } else {
    return left(ValueFailure.shortPassword(shortPsw: inputPassword));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(
    String inputPhoneNumber) {
  if (inputPhoneNumber.length == 11) {
    return right(inputPhoneNumber);
  } else {
    return left(
        ValueFailure.invalidPhoneNumber(invalidPhoneNumber: inputPhoneNumber));
  }
}

Either<ValueFailure<String>, String> validateMaxLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
        exceedingLength: input, maxLength: maxLength));
  }
}

Either<ValueFailure<String>, String> validateNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(empty: input));
  }
}

Either<ValueFailure<String>, String> validateConfirmPassword(
    String input, String password) {
  if (input == password) {
    return right(input);
  } else {
    return left(ValueFailure.passwordNotMatch(passwordNotMatch: input));
  }
}
