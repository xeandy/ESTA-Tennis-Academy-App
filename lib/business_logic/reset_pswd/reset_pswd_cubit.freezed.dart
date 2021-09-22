// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reset_pswd_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetPswdStateTearOff {
  const _$ResetPswdStateTearOff();

  _ResetPswdState call(
      {required Email email,
      required bool isSubmitting,
      required AutovalidateMode showErrorMessage,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _ResetPswdState(
      email: email,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
const $ResetPswdState = _$ResetPswdStateTearOff();

/// @nodoc
mixin _$ResetPswdState {
  Email get email => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPswdStateCopyWith<ResetPswdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPswdStateCopyWith<$Res> {
  factory $ResetPswdStateCopyWith(
          ResetPswdState value, $Res Function(ResetPswdState) then) =
      _$ResetPswdStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      bool isSubmitting,
      AutovalidateMode showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$ResetPswdStateCopyWithImpl<$Res>
    implements $ResetPswdStateCopyWith<$Res> {
  _$ResetPswdStateCopyWithImpl(this._value, this._then);

  final ResetPswdState _value;
  // ignore: unused_field
  final $Res Function(ResetPswdState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ResetPswdStateCopyWith<$Res>
    implements $ResetPswdStateCopyWith<$Res> {
  factory _$ResetPswdStateCopyWith(
          _ResetPswdState value, $Res Function(_ResetPswdState) then) =
      __$ResetPswdStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      bool isSubmitting,
      AutovalidateMode showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$ResetPswdStateCopyWithImpl<$Res>
    extends _$ResetPswdStateCopyWithImpl<$Res>
    implements _$ResetPswdStateCopyWith<$Res> {
  __$ResetPswdStateCopyWithImpl(
      _ResetPswdState _value, $Res Function(_ResetPswdState) _then)
      : super(_value, (v) => _then(v as _ResetPswdState));

  @override
  _ResetPswdState get _value => super._value as _ResetPswdState;

  @override
  $Res call({
    Object? email = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_ResetPswdState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ResetPswdState implements _ResetPswdState {
  const _$_ResetPswdState(
      {required this.email,
      required this.isSubmitting,
      required this.showErrorMessage,
      required this.authFailureOrSuccess});

  @override
  final Email email;
  @override
  final bool isSubmitting;
  @override
  final AutovalidateMode showErrorMessage;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'ResetPswdState(email: $email, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPswdState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$ResetPswdStateCopyWith<_ResetPswdState> get copyWith =>
      __$ResetPswdStateCopyWithImpl<_ResetPswdState>(this, _$identity);
}

abstract class _ResetPswdState implements ResetPswdState {
  const factory _ResetPswdState(
          {required Email email,
          required bool isSubmitting,
          required AutovalidateMode showErrorMessage,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_ResetPswdState;

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetPswdStateCopyWith<_ResetPswdState> get copyWith =>
      throw _privateConstructorUsedError;
}
