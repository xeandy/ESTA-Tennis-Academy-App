// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

  EmailAlredyInUse emailAlredyInUse() {
    return const EmailAlredyInUse();
  }

  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

  ResetPswdUserNotFound resetPswdUserNotFound() {
    return const ResetPswdUserNotFound();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() resetPswdUserNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? resetPswdUserNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ResetPswdUserNotFound value)
        resetPswdUserNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ResetPswdUserNotFound value)? resetPswdUserNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() resetPswdUserNotFound,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ResetPswdUserNotFound value)
        resetPswdUserNotFound,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ResetPswdUserNotFound value)? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() resetPswdUserNotFound,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ResetPswdUserNotFound value)
        resetPswdUserNotFound,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ResetPswdUserNotFound value)? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $EmailAlredyInUseCopyWith<$Res> {
  factory $EmailAlredyInUseCopyWith(
          EmailAlredyInUse value, $Res Function(EmailAlredyInUse) then) =
      _$EmailAlredyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlredyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlredyInUseCopyWith<$Res> {
  _$EmailAlredyInUseCopyWithImpl(
      EmailAlredyInUse _value, $Res Function(EmailAlredyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlredyInUse));

  @override
  EmailAlredyInUse get _value => super._value as EmailAlredyInUse;
}

/// @nodoc

class _$EmailAlredyInUse implements EmailAlredyInUse {
  const _$EmailAlredyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlredyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlredyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() resetPswdUserNotFound,
  }) {
    return emailAlredyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (emailAlredyInUse != null) {
      return emailAlredyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ResetPswdUserNotFound value)
        resetPswdUserNotFound,
  }) {
    return emailAlredyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ResetPswdUserNotFound value)? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (emailAlredyInUse != null) {
      return emailAlredyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlredyInUse implements AuthFailure {
  const factory EmailAlredyInUse() = _$EmailAlredyInUse;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

/// @nodoc

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() resetPswdUserNotFound,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ResetPswdUserNotFound value)
        resetPswdUserNotFound,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ResetPswdUserNotFound value)? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

/// @nodoc
abstract class $ResetPswdUserNotFoundCopyWith<$Res> {
  factory $ResetPswdUserNotFoundCopyWith(ResetPswdUserNotFound value,
          $Res Function(ResetPswdUserNotFound) then) =
      _$ResetPswdUserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPswdUserNotFoundCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ResetPswdUserNotFoundCopyWith<$Res> {
  _$ResetPswdUserNotFoundCopyWithImpl(
      ResetPswdUserNotFound _value, $Res Function(ResetPswdUserNotFound) _then)
      : super(_value, (v) => _then(v as ResetPswdUserNotFound));

  @override
  ResetPswdUserNotFound get _value => super._value as ResetPswdUserNotFound;
}

/// @nodoc

class _$ResetPswdUserNotFound implements ResetPswdUserNotFound {
  const _$ResetPswdUserNotFound();

  @override
  String toString() {
    return 'AuthFailure.resetPswdUserNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetPswdUserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidEmail,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() resetPswdUserNotFound,
  }) {
    return resetPswdUserNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidEmail,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (resetPswdUserNotFound != null) {
      return resetPswdUserNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ResetPswdUserNotFound value)
        resetPswdUserNotFound,
  }) {
    return resetPswdUserNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ResetPswdUserNotFound value)? resetPswdUserNotFound,
    required TResult orElse(),
  }) {
    if (resetPswdUserNotFound != null) {
      return resetPswdUserNotFound(this);
    }
    return orElse();
  }
}

abstract class ResetPswdUserNotFound implements AuthFailure {
  const factory ResetPswdUserNotFound() = _$ResetPswdUserNotFound;
}
