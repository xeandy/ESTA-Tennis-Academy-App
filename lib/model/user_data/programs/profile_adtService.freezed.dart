// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_adtService.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileAdtServiceTearOff {
  const _$ProfileAdtServiceTearOff();

  _ProfileAdtService call(
      {required String ptlTimes,
      required String pflTimes,
      required int price,
      required bool status}) {
    return _ProfileAdtService(
      ptlTimes: ptlTimes,
      pflTimes: pflTimes,
      price: price,
      status: status,
    );
  }
}

/// @nodoc
const $ProfileAdtService = _$ProfileAdtServiceTearOff();

/// @nodoc
mixin _$ProfileAdtService {
  String get ptlTimes => throw _privateConstructorUsedError;
  String get pflTimes => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileAdtServiceCopyWith<ProfileAdtService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAdtServiceCopyWith<$Res> {
  factory $ProfileAdtServiceCopyWith(
          ProfileAdtService value, $Res Function(ProfileAdtService) then) =
      _$ProfileAdtServiceCopyWithImpl<$Res>;
  $Res call({String ptlTimes, String pflTimes, int price, bool status});
}

/// @nodoc
class _$ProfileAdtServiceCopyWithImpl<$Res>
    implements $ProfileAdtServiceCopyWith<$Res> {
  _$ProfileAdtServiceCopyWithImpl(this._value, this._then);

  final ProfileAdtService _value;
  // ignore: unused_field
  final $Res Function(ProfileAdtService) _then;

  @override
  $Res call({
    Object? ptlTimes = freezed,
    Object? pflTimes = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      ptlTimes: ptlTimes == freezed
          ? _value.ptlTimes
          : ptlTimes // ignore: cast_nullable_to_non_nullable
              as String,
      pflTimes: pflTimes == freezed
          ? _value.pflTimes
          : pflTimes // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProfileAdtServiceCopyWith<$Res>
    implements $ProfileAdtServiceCopyWith<$Res> {
  factory _$ProfileAdtServiceCopyWith(
          _ProfileAdtService value, $Res Function(_ProfileAdtService) then) =
      __$ProfileAdtServiceCopyWithImpl<$Res>;
  @override
  $Res call({String ptlTimes, String pflTimes, int price, bool status});
}

/// @nodoc
class __$ProfileAdtServiceCopyWithImpl<$Res>
    extends _$ProfileAdtServiceCopyWithImpl<$Res>
    implements _$ProfileAdtServiceCopyWith<$Res> {
  __$ProfileAdtServiceCopyWithImpl(
      _ProfileAdtService _value, $Res Function(_ProfileAdtService) _then)
      : super(_value, (v) => _then(v as _ProfileAdtService));

  @override
  _ProfileAdtService get _value => super._value as _ProfileAdtService;

  @override
  $Res call({
    Object? ptlTimes = freezed,
    Object? pflTimes = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_ProfileAdtService(
      ptlTimes: ptlTimes == freezed
          ? _value.ptlTimes
          : ptlTimes // ignore: cast_nullable_to_non_nullable
              as String,
      pflTimes: pflTimes == freezed
          ? _value.pflTimes
          : pflTimes // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileAdtService implements _ProfileAdtService {
  const _$_ProfileAdtService(
      {required this.ptlTimes,
      required this.pflTimes,
      required this.price,
      required this.status});

  @override
  final String ptlTimes;
  @override
  final String pflTimes;
  @override
  final int price;
  @override
  final bool status;

  @override
  String toString() {
    return 'ProfileAdtService(ptlTimes: $ptlTimes, pflTimes: $pflTimes, price: $price, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileAdtService &&
            (identical(other.ptlTimes, ptlTimes) ||
                const DeepCollectionEquality()
                    .equals(other.ptlTimes, ptlTimes)) &&
            (identical(other.pflTimes, pflTimes) ||
                const DeepCollectionEquality()
                    .equals(other.pflTimes, pflTimes)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ptlTimes) ^
      const DeepCollectionEquality().hash(pflTimes) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ProfileAdtServiceCopyWith<_ProfileAdtService> get copyWith =>
      __$ProfileAdtServiceCopyWithImpl<_ProfileAdtService>(this, _$identity);
}

abstract class _ProfileAdtService implements ProfileAdtService {
  const factory _ProfileAdtService(
      {required String ptlTimes,
      required String pflTimes,
      required int price,
      required bool status}) = _$_ProfileAdtService;

  @override
  String get ptlTimes => throw _privateConstructorUsedError;
  @override
  String get pflTimes => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileAdtServiceCopyWith<_ProfileAdtService> get copyWith =>
      throw _privateConstructorUsedError;
}
