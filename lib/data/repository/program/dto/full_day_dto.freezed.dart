// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'full_day_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FullDayDto _$FullDayDtoFromJson(Map<String, dynamic> json) {
  return _FullDayDto.fromJson(json);
}

/// @nodoc
class _$FullDayDtoTearOff {
  const _$FullDayDtoTearOff();

  _FullDayDto call({required String? groupName, required int? price}) {
    return _FullDayDto(
      groupName: groupName,
      price: price,
    );
  }

  FullDayDto fromJson(Map<String, Object> json) {
    return FullDayDto.fromJson(json);
  }
}

/// @nodoc
const $FullDayDto = _$FullDayDtoTearOff();

/// @nodoc
mixin _$FullDayDto {
  String? get groupName => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullDayDtoCopyWith<FullDayDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullDayDtoCopyWith<$Res> {
  factory $FullDayDtoCopyWith(
          FullDayDto value, $Res Function(FullDayDto) then) =
      _$FullDayDtoCopyWithImpl<$Res>;
  $Res call({String? groupName, int? price});
}

/// @nodoc
class _$FullDayDtoCopyWithImpl<$Res> implements $FullDayDtoCopyWith<$Res> {
  _$FullDayDtoCopyWithImpl(this._value, this._then);

  final FullDayDto _value;
  // ignore: unused_field
  final $Res Function(FullDayDto) _then;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FullDayDtoCopyWith<$Res> implements $FullDayDtoCopyWith<$Res> {
  factory _$FullDayDtoCopyWith(
          _FullDayDto value, $Res Function(_FullDayDto) then) =
      __$FullDayDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? groupName, int? price});
}

/// @nodoc
class __$FullDayDtoCopyWithImpl<$Res> extends _$FullDayDtoCopyWithImpl<$Res>
    implements _$FullDayDtoCopyWith<$Res> {
  __$FullDayDtoCopyWithImpl(
      _FullDayDto _value, $Res Function(_FullDayDto) _then)
      : super(_value, (v) => _then(v as _FullDayDto));

  @override
  _FullDayDto get _value => super._value as _FullDayDto;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? price = freezed,
  }) {
    return _then(_FullDayDto(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FullDayDto extends _FullDayDto {
  const _$_FullDayDto({required this.groupName, required this.price})
      : super._();

  factory _$_FullDayDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FullDayDtoFromJson(json);

  @override
  final String? groupName;
  @override
  final int? price;

  @override
  String toString() {
    return 'FullDayDto(groupName: $groupName, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullDayDto &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$FullDayDtoCopyWith<_FullDayDto> get copyWith =>
      __$FullDayDtoCopyWithImpl<_FullDayDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FullDayDtoToJson(this);
  }
}

abstract class _FullDayDto extends FullDayDto {
  const factory _FullDayDto({required String? groupName, required int? price}) =
      _$_FullDayDto;
  const _FullDayDto._() : super._();

  factory _FullDayDto.fromJson(Map<String, dynamic> json) =
      _$_FullDayDto.fromJson;

  @override
  String? get groupName => throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FullDayDtoCopyWith<_FullDayDto> get copyWith =>
      throw _privateConstructorUsedError;
}
