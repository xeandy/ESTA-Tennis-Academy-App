import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String invalidEmail,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required String shortPsw,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidPhoneNumber({
    required String invalidPhoneNumber,
  }) = InvalidPhoneNumber<T>;

  const factory ValueFailure.exceedingLength({
    required String exceedingLength,
    required int maxLength,
  }) = ExceedingLength<T>;

  const factory ValueFailure.empty({
    required String empty,
  }) = Empty<T>;

  const factory ValueFailure.passwordNotMatch({
    required String passwordNotMatch,
  }) = PasswordNotMatch<T>;
}
