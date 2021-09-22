// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required Email email,
      required Password password,
      required UserName userName,
      required PhoneNumber phoneNumber,
      required ConfirmPassword confirmPassword,
      required bool isSubmitting,
      required AutovalidateMode showErrorMessage,
      required AutovalidateMode showApplicationErrorMessage,
      required ApplicationForm applicationForm,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _SignUpState(
      email: email,
      password: password,
      userName: userName,
      phoneNumber: phoneNumber,
      confirmPassword: confirmPassword,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
      showApplicationErrorMessage: showApplicationErrorMessage,
      applicationForm: applicationForm,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  UserName get userName => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessage => throw _privateConstructorUsedError;
  AutovalidateMode get showApplicationErrorMessage =>
      throw _privateConstructorUsedError;
  ApplicationForm get applicationForm => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      UserName userName,
      PhoneNumber phoneNumber,
      ConfirmPassword confirmPassword,
      bool isSubmitting,
      AutovalidateMode showErrorMessage,
      AutovalidateMode showApplicationErrorMessage,
      ApplicationForm applicationForm,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});

  $ApplicationFormCopyWith<$Res> get applicationForm;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? userName = freezed,
    Object? phoneNumber = freezed,
    Object? confirmPassword = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? showApplicationErrorMessage = freezed,
    Object? applicationForm = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      showApplicationErrorMessage: showApplicationErrorMessage == freezed
          ? _value.showApplicationErrorMessage
          : showApplicationErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      applicationForm: applicationForm == freezed
          ? _value.applicationForm
          : applicationForm // ignore: cast_nullable_to_non_nullable
              as ApplicationForm,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }

  @override
  $ApplicationFormCopyWith<$Res> get applicationForm {
    return $ApplicationFormCopyWith<$Res>(_value.applicationForm, (value) {
      return _then(_value.copyWith(applicationForm: value));
    });
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      UserName userName,
      PhoneNumber phoneNumber,
      ConfirmPassword confirmPassword,
      bool isSubmitting,
      AutovalidateMode showErrorMessage,
      AutovalidateMode showApplicationErrorMessage,
      ApplicationForm applicationForm,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});

  @override
  $ApplicationFormCopyWith<$Res> get applicationForm;
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? userName = freezed,
    Object? phoneNumber = freezed,
    Object? confirmPassword = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? showApplicationErrorMessage = freezed,
    Object? applicationForm = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_SignUpState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      showApplicationErrorMessage: showApplicationErrorMessage == freezed
          ? _value.showApplicationErrorMessage
          : showApplicationErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      applicationForm: applicationForm == freezed
          ? _value.applicationForm
          : applicationForm // ignore: cast_nullable_to_non_nullable
              as ApplicationForm,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.email,
      required this.password,
      required this.userName,
      required this.phoneNumber,
      required this.confirmPassword,
      required this.isSubmitting,
      required this.showErrorMessage,
      required this.showApplicationErrorMessage,
      required this.applicationForm,
      required this.authFailureOrSuccess});

  @override
  final Email email;
  @override
  final Password password;
  @override
  final UserName userName;
  @override
  final PhoneNumber phoneNumber;
  @override
  final ConfirmPassword confirmPassword;
  @override
  final bool isSubmitting;
  @override
  final AutovalidateMode showErrorMessage;
  @override
  final AutovalidateMode showApplicationErrorMessage;
  @override
  final ApplicationForm applicationForm;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignUpState(email: $email, password: $password, userName: $userName, phoneNumber: $phoneNumber, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, showApplicationErrorMessage: $showApplicationErrorMessage, applicationForm: $applicationForm, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.showApplicationErrorMessage,
                    showApplicationErrorMessage) ||
                const DeepCollectionEquality().equals(
                    other.showApplicationErrorMessage,
                    showApplicationErrorMessage)) &&
            (identical(other.applicationForm, applicationForm) ||
                const DeepCollectionEquality()
                    .equals(other.applicationForm, applicationForm)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(showApplicationErrorMessage) ^
      const DeepCollectionEquality().hash(applicationForm) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {required Email email,
          required Password password,
          required UserName userName,
          required PhoneNumber phoneNumber,
          required ConfirmPassword confirmPassword,
          required bool isSubmitting,
          required AutovalidateMode showErrorMessage,
          required AutovalidateMode showApplicationErrorMessage,
          required ApplicationForm applicationForm,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_SignUpState;

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  UserName get userName => throw _privateConstructorUsedError;
  @override
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showErrorMessage => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showApplicationErrorMessage =>
      throw _privateConstructorUsedError;
  @override
  ApplicationForm get applicationForm => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
