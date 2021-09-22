// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_adtService_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileAdtServiceDto _$ProfileAdtServiceDtoFromJson(Map<String, dynamic> json) {
  return _ProfileAdtServiceDto.fromJson(json);
}

/// @nodoc
class _$ProfileAdtServiceDtoTearOff {
  const _$ProfileAdtServiceDtoTearOff();

  _ProfileAdtServiceDto call(
      {required String ptlTimes,
      required String pflTimes,
      required int price,
      required bool status,
      required String date}) {
    return _ProfileAdtServiceDto(
      ptlTimes: ptlTimes,
      pflTimes: pflTimes,
      price: price,
      status: status,
      date: date,
    );
  }

  ProfileAdtServiceDto fromJson(Map<String, Object> json) {
    return ProfileAdtServiceDto.fromJson(json);
  }
}

/// @nodoc
const $ProfileAdtServiceDto = _$ProfileAdtServiceDtoTearOff();

/// @nodoc
mixin _$ProfileAdtServiceDto {
  String get ptlTimes => throw _privateConstructorUsedError;
  String get pflTimes => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileAdtServiceDtoCopyWith<ProfileAdtServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAdtServiceDtoCopyWith<$Res> {
  factory $ProfileAdtServiceDtoCopyWith(ProfileAdtServiceDto value,
          $Res Function(ProfileAdtServiceDto) then) =
      _$ProfileAdtServiceDtoCopyWithImpl<$Res>;
  $Res call(
      {String ptlTimes, String pflTimes, int price, bool status, String date});
}

/// @nodoc
class _$ProfileAdtServiceDtoCopyWithImpl<$Res>
    implements $ProfileAdtServiceDtoCopyWith<$Res> {
  _$ProfileAdtServiceDtoCopyWithImpl(this._value, this._then);

  final ProfileAdtServiceDto _value;
  // ignore: unused_field
  final $Res Function(ProfileAdtServiceDto) _then;

  @override
  $Res call({
    Object? ptlTimes = freezed,
    Object? pflTimes = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? date = freezed,
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileAdtServiceDtoCopyWith<$Res>
    implements $ProfileAdtServiceDtoCopyWith<$Res> {
  factory _$ProfileAdtServiceDtoCopyWith(_ProfileAdtServiceDto value,
          $Res Function(_ProfileAdtServiceDto) then) =
      __$ProfileAdtServiceDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String ptlTimes, String pflTimes, int price, bool status, String date});
}

/// @nodoc
class __$ProfileAdtServiceDtoCopyWithImpl<$Res>
    extends _$ProfileAdtServiceDtoCopyWithImpl<$Res>
    implements _$ProfileAdtServiceDtoCopyWith<$Res> {
  __$ProfileAdtServiceDtoCopyWithImpl(
      _ProfileAdtServiceDto _value, $Res Function(_ProfileAdtServiceDto) _then)
      : super(_value, (v) => _then(v as _ProfileAdtServiceDto));

  @override
  _ProfileAdtServiceDto get _value => super._value as _ProfileAdtServiceDto;

  @override
  $Res call({
    Object? ptlTimes = freezed,
    Object? pflTimes = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? date = freezed,
  }) {
    return _then(_ProfileAdtServiceDto(
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileAdtServiceDto extends _ProfileAdtServiceDto {
  const _$_ProfileAdtServiceDto(
      {required this.ptlTimes,
      required this.pflTimes,
      required this.price,
      required this.status,
      required this.date})
      : super._();

  factory _$_ProfileAdtServiceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileAdtServiceDtoFromJson(json);

  @override
  final String ptlTimes;
  @override
  final String pflTimes;
  @override
  final int price;
  @override
  final bool status;
  @override
  final String date;

  @override
  String toString() {
    return 'ProfileAdtServiceDto(ptlTimes: $ptlTimes, pflTimes: $pflTimes, price: $price, status: $status, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileAdtServiceDto &&
            (identical(other.ptlTimes, ptlTimes) ||
                const DeepCollectionEquality()
                    .equals(other.ptlTimes, ptlTimes)) &&
            (identical(other.pflTimes, pflTimes) ||
                const DeepCollectionEquality()
                    .equals(other.pflTimes, pflTimes)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ptlTimes) ^
      const DeepCollectionEquality().hash(pflTimes) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$ProfileAdtServiceDtoCopyWith<_ProfileAdtServiceDto> get copyWith =>
      __$ProfileAdtServiceDtoCopyWithImpl<_ProfileAdtServiceDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileAdtServiceDtoToJson(this);
  }
}

abstract class _ProfileAdtServiceDto extends ProfileAdtServiceDto {
  const factory _ProfileAdtServiceDto(
      {required String ptlTimes,
      required String pflTimes,
      required int price,
      required bool status,
      required String date}) = _$_ProfileAdtServiceDto;
  const _ProfileAdtServiceDto._() : super._();

  factory _ProfileAdtServiceDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileAdtServiceDto.fromJson;

  @override
  String get ptlTimes => throw _privateConstructorUsedError;
  @override
  String get pflTimes => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileAdtServiceDtoCopyWith<_ProfileAdtServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
