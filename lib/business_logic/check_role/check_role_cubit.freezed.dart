// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_role_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckRoleStateTearOff {
  const _$CheckRoleStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Admin admin() {
    return const _Admin();
  }

  _User user() {
    return const _User();
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _LoadFailure loadFailure(FirestoreFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $CheckRoleState = _$CheckRoleStateTearOff();

/// @nodoc
mixin _$CheckRoleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() admin,
    required TResult Function() user,
    required TResult Function() unauthenticated,
    required TResult Function(FirestoreFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? admin,
    TResult Function()? user,
    TResult Function()? unauthenticated,
    TResult Function(FirestoreFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Admin value) admin,
    required TResult Function(_User value) user,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Admin value)? admin,
    TResult Function(_User value)? user,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckRoleStateCopyWith<$Res> {
  factory $CheckRoleStateCopyWith(
          CheckRoleState value, $Res Function(CheckRoleState) then) =
      _$CheckRoleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckRoleStateCopyWithImpl<$Res>
    implements $CheckRoleStateCopyWith<$Res> {
  _$CheckRoleStateCopyWithImpl(this._value, this._then);

  final CheckRoleState _value;
  // ignore: unused_field
  final $Res Function(CheckRoleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CheckRoleStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CheckRoleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() admin,
    required TResult Function() user,
    required TResult Function() unauthenticated,
    required TResult Function(FirestoreFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? admin,
    TResult Function()? user,
    TResult Function()? unauthenticated,
    TResult Function(FirestoreFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Admin value) admin,
    required TResult Function(_User value) user,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Admin value)? admin,
    TResult Function(_User value)? user,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckRoleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AdminCopyWith<$Res> {
  factory _$AdminCopyWith(_Admin value, $Res Function(_Admin) then) =
      __$AdminCopyWithImpl<$Res>;
}

/// @nodoc
class __$AdminCopyWithImpl<$Res> extends _$CheckRoleStateCopyWithImpl<$Res>
    implements _$AdminCopyWith<$Res> {
  __$AdminCopyWithImpl(_Admin _value, $Res Function(_Admin) _then)
      : super(_value, (v) => _then(v as _Admin));

  @override
  _Admin get _value => super._value as _Admin;
}

/// @nodoc

class _$_Admin implements _Admin {
  const _$_Admin();

  @override
  String toString() {
    return 'CheckRoleState.admin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Admin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() admin,
    required TResult Function() user,
    required TResult Function() unauthenticated,
    required TResult Function(FirestoreFailure failure) loadFailure,
  }) {
    return admin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? admin,
    TResult Function()? user,
    TResult Function()? unauthenticated,
    TResult Function(FirestoreFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Admin value) admin,
    required TResult Function(_User value) user,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return admin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Admin value)? admin,
    TResult Function(_User value)? user,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(this);
    }
    return orElse();
  }
}

abstract class _Admin implements CheckRoleState {
  const factory _Admin() = _$_Admin;
}

/// @nodoc
abstract class _$UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$CheckRoleStateCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;
}

/// @nodoc

class _$_User implements _User {
  const _$_User();

  @override
  String toString() {
    return 'CheckRoleState.user()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _User);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() admin,
    required TResult Function() user,
    required TResult Function() unauthenticated,
    required TResult Function(FirestoreFailure failure) loadFailure,
  }) {
    return user();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? admin,
    TResult Function()? user,
    TResult Function()? unauthenticated,
    TResult Function(FirestoreFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Admin value) admin,
    required TResult Function(_User value) user,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Admin value)? admin,
    TResult Function(_User value)? user,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements CheckRoleState {
  const factory _User() = _$_User;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$CheckRoleStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'CheckRoleState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() admin,
    required TResult Function() user,
    required TResult Function() unauthenticated,
    required TResult Function(FirestoreFailure failure) loadFailure,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? admin,
    TResult Function()? user,
    TResult Function()? unauthenticated,
    TResult Function(FirestoreFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Admin value) admin,
    required TResult Function(_User value) user,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Admin value)? admin,
    TResult Function(_User value)? user,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements CheckRoleState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({FirestoreFailure failure});

  $FirestoreFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CheckRoleStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FirestoreFailure,
    ));
  }

  @override
  $FirestoreFailureCopyWith<$Res> get failure {
    return $FirestoreFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final FirestoreFailure failure;

  @override
  String toString() {
    return 'CheckRoleState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() admin,
    required TResult Function() user,
    required TResult Function() unauthenticated,
    required TResult Function(FirestoreFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? admin,
    TResult Function()? user,
    TResult Function()? unauthenticated,
    TResult Function(FirestoreFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Admin value) admin,
    required TResult Function(_User value) user,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Admin value)? admin,
    TResult Function(_User value)? user,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CheckRoleState {
  const factory _LoadFailure(FirestoreFailure failure) = _$_LoadFailure;

  FirestoreFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
