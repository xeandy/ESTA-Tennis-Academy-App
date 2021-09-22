// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_asp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileAspTearOff {
  const _$ProfileAspTearOff();

  _ProfileAsp call(
      {required String programName,
      required String times,
      required int price,
      required bool status,
      required String id}) {
    return _ProfileAsp(
      programName: programName,
      times: times,
      price: price,
      status: status,
      id: id,
    );
  }
}

/// @nodoc
const $ProfileAsp = _$ProfileAspTearOff();

/// @nodoc
mixin _$ProfileAsp {
  String get programName => throw _privateConstructorUsedError;
  String get times => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileAspCopyWith<ProfileAsp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAspCopyWith<$Res> {
  factory $ProfileAspCopyWith(
          ProfileAsp value, $Res Function(ProfileAsp) then) =
      _$ProfileAspCopyWithImpl<$Res>;
  $Res call(
      {String programName, String times, int price, bool status, String id});
}

/// @nodoc
class _$ProfileAspCopyWithImpl<$Res> implements $ProfileAspCopyWith<$Res> {
  _$ProfileAspCopyWithImpl(this._value, this._then);

  final ProfileAsp _value;
  // ignore: unused_field
  final $Res Function(ProfileAsp) _then;

  @override
  $Res call({
    Object? programName = freezed,
    Object? times = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      programName: programName == freezed
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileAspCopyWith<$Res> implements $ProfileAspCopyWith<$Res> {
  factory _$ProfileAspCopyWith(
          _ProfileAsp value, $Res Function(_ProfileAsp) then) =
      __$ProfileAspCopyWithImpl<$Res>;
  @override
  $Res call(
      {String programName, String times, int price, bool status, String id});
}

/// @nodoc
class __$ProfileAspCopyWithImpl<$Res> extends _$ProfileAspCopyWithImpl<$Res>
    implements _$ProfileAspCopyWith<$Res> {
  __$ProfileAspCopyWithImpl(
      _ProfileAsp _value, $Res Function(_ProfileAsp) _then)
      : super(_value, (v) => _then(v as _ProfileAsp));

  @override
  _ProfileAsp get _value => super._value as _ProfileAsp;

  @override
  $Res call({
    Object? programName = freezed,
    Object? times = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_ProfileAsp(
      programName: programName == freezed
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileAsp implements _ProfileAsp {
  const _$_ProfileAsp(
      {required this.programName,
      required this.times,
      required this.price,
      required this.status,
      required this.id});

  @override
  final String programName;
  @override
  final String times;
  @override
  final int price;
  @override
  final bool status;
  @override
  final String id;

  @override
  String toString() {
    return 'ProfileAsp(programName: $programName, times: $times, price: $price, status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileAsp &&
            (identical(other.programName, programName) ||
                const DeepCollectionEquality()
                    .equals(other.programName, programName)) &&
            (identical(other.times, times) ||
                const DeepCollectionEquality().equals(other.times, times)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(programName) ^
      const DeepCollectionEquality().hash(times) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ProfileAspCopyWith<_ProfileAsp> get copyWith =>
      __$ProfileAspCopyWithImpl<_ProfileAsp>(this, _$identity);
}

abstract class _ProfileAsp implements ProfileAsp {
  const factory _ProfileAsp(
      {required String programName,
      required String times,
      required int price,
      required bool status,
      required String id}) = _$_ProfileAsp;

  @override
  String get programName => throw _privateConstructorUsedError;
  @override
  String get times => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileAspCopyWith<_ProfileAsp> get copyWith =>
      throw _privateConstructorUsedError;
}
