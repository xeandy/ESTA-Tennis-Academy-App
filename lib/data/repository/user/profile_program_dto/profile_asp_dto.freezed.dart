// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_asp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileAspDto _$ProfileAspDtoFromJson(Map<String, dynamic> json) {
  return _ProfileAspDto.fromJson(json);
}

/// @nodoc
class _$ProfileAspDtoTearOff {
  const _$ProfileAspDtoTearOff();

  _ProfileAspDto call(
      {required String programName,
      required String times,
      required int price,
      required bool status,
      required String date,
      required String id}) {
    return _ProfileAspDto(
      programName: programName,
      times: times,
      price: price,
      status: status,
      date: date,
      id: id,
    );
  }

  ProfileAspDto fromJson(Map<String, Object> json) {
    return ProfileAspDto.fromJson(json);
  }
}

/// @nodoc
const $ProfileAspDto = _$ProfileAspDtoTearOff();

/// @nodoc
mixin _$ProfileAspDto {
  String get programName => throw _privateConstructorUsedError;
  String get times => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileAspDtoCopyWith<ProfileAspDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAspDtoCopyWith<$Res> {
  factory $ProfileAspDtoCopyWith(
          ProfileAspDto value, $Res Function(ProfileAspDto) then) =
      _$ProfileAspDtoCopyWithImpl<$Res>;
  $Res call(
      {String programName,
      String times,
      int price,
      bool status,
      String date,
      String id});
}

/// @nodoc
class _$ProfileAspDtoCopyWithImpl<$Res>
    implements $ProfileAspDtoCopyWith<$Res> {
  _$ProfileAspDtoCopyWithImpl(this._value, this._then);

  final ProfileAspDto _value;
  // ignore: unused_field
  final $Res Function(ProfileAspDto) _then;

  @override
  $Res call({
    Object? programName = freezed,
    Object? times = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? date = freezed,
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileAspDtoCopyWith<$Res>
    implements $ProfileAspDtoCopyWith<$Res> {
  factory _$ProfileAspDtoCopyWith(
          _ProfileAspDto value, $Res Function(_ProfileAspDto) then) =
      __$ProfileAspDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String programName,
      String times,
      int price,
      bool status,
      String date,
      String id});
}

/// @nodoc
class __$ProfileAspDtoCopyWithImpl<$Res>
    extends _$ProfileAspDtoCopyWithImpl<$Res>
    implements _$ProfileAspDtoCopyWith<$Res> {
  __$ProfileAspDtoCopyWithImpl(
      _ProfileAspDto _value, $Res Function(_ProfileAspDto) _then)
      : super(_value, (v) => _then(v as _ProfileAspDto));

  @override
  _ProfileAspDto get _value => super._value as _ProfileAspDto;

  @override
  $Res call({
    Object? programName = freezed,
    Object? times = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_ProfileAspDto(
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileAspDto extends _ProfileAspDto {
  const _$_ProfileAspDto(
      {required this.programName,
      required this.times,
      required this.price,
      required this.status,
      required this.date,
      required this.id})
      : super._();

  factory _$_ProfileAspDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileAspDtoFromJson(json);

  @override
  final String programName;
  @override
  final String times;
  @override
  final int price;
  @override
  final bool status;
  @override
  final String date;
  @override
  final String id;

  @override
  String toString() {
    return 'ProfileAspDto(programName: $programName, times: $times, price: $price, status: $status, date: $date, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileAspDto &&
            (identical(other.programName, programName) ||
                const DeepCollectionEquality()
                    .equals(other.programName, programName)) &&
            (identical(other.times, times) ||
                const DeepCollectionEquality().equals(other.times, times)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
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
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ProfileAspDtoCopyWith<_ProfileAspDto> get copyWith =>
      __$ProfileAspDtoCopyWithImpl<_ProfileAspDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileAspDtoToJson(this);
  }
}

abstract class _ProfileAspDto extends ProfileAspDto {
  const factory _ProfileAspDto(
      {required String programName,
      required String times,
      required int price,
      required bool status,
      required String date,
      required String id}) = _$_ProfileAspDto;
  const _ProfileAspDto._() : super._();

  factory _ProfileAspDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileAspDto.fromJson;

  @override
  String get programName => throw _privateConstructorUsedError;
  @override
  String get times => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileAspDtoCopyWith<_ProfileAspDto> get copyWith =>
      throw _privateConstructorUsedError;
}
