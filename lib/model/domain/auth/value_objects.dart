import 'package:academy_app/model/domain/auth/value_failures.dart';
import 'package:academy_app/model/domain/core/value_objects.dart';
import 'package:academy_app/model/domain/auth/value_validators.dart';
import 'package:dartz/dartz.dart';

class Email extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Email(String inputValue) {
    return Email._(validateEmailAddress(inputValue).flatMap(validateNotEmpty));
  }

  Email._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  factory Password(String inputValue) {
    return Password._(
      validateNotEmpty(inputValue).flatMap(validatePassword),
    );
  }

  Password._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String inputValue) {
    return PhoneNumber._(
      validateNotEmpty(inputValue).flatMap(validatePhoneNumber),
    );
  }

  PhoneNumber._(this.value);
}

class UserName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory UserName(String inputValue) {
    return UserName._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  UserName._(this.value);
}

class ConfirmPassword extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  factory ConfirmPassword(String inputValue, Password password) {
    return ConfirmPassword._(
      validateConfirmPassword(
        inputValue,
        password.value.getOrElse(() => ''),
      ),
    );
  }

  ConfirmPassword._(this.value);
}

class PlayerFullName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory PlayerFullName(String inputValue) {
    return PlayerFullName._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  PlayerFullName._(this.value);
}

class DateOfBirth extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory DateOfBirth(String inputValue) {
    return DateOfBirth._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  DateOfBirth._(this.value);
}

class ParentOneName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory ParentOneName(String inputValue) {
    return ParentOneName._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  ParentOneName._(this.value);
}

class ParentTwoName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory ParentTwoName(String inputValue) {
    return ParentTwoName._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  ParentTwoName._(this.value);
}

class ParentOnePhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory ParentOnePhoneNumber(String inputValue) {
    return ParentOnePhoneNumber._(
      validateNotEmpty(inputValue).flatMap(validatePhoneNumber),
    );
  }

  ParentOnePhoneNumber._(this.value);
}

class ParentTwoPhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory ParentTwoPhoneNumber(String inputValue) {
    return ParentTwoPhoneNumber._(
      validateNotEmpty(inputValue).flatMap(validatePhoneNumber),
    );
  }

  ParentTwoPhoneNumber._(this.value);
}

class HomeAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 40;

  factory HomeAddress(String inputValue) {
    return HomeAddress._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  HomeAddress._(this.value);
}

class City extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory City(String inputValue) {
    return City._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  City._(this.value);
}

class CountryState extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory CountryState(String inputValue) {
    return CountryState._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  CountryState._(this.value);
}

class ZipCode extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory ZipCode(String inputValue) {
    return ZipCode._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  ZipCode._(this.value);
}

class EmergencyPhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmergencyPhoneNumber(String inputValue) {
    return EmergencyPhoneNumber._(
      validateNotEmpty(inputValue).flatMap(validatePhoneNumber),
    );
  }

  EmergencyPhoneNumber._(this.value);
}

class PreferredEmail extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory PreferredEmail(String inputValue) {
    return PreferredEmail._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  PreferredEmail._(this.value);
}

class NativeLanguage extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory NativeLanguage(String inputValue) {
    return NativeLanguage._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  NativeLanguage._(this.value);
}

class EmergencyName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory EmergencyName(String inputValue) {
    return EmergencyName._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  EmergencyName._(this.value);
}

class RelationshipPlayer extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory RelationshipPlayer(String inputValue) {
    return RelationshipPlayer._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  RelationshipPlayer._(this.value);
}
