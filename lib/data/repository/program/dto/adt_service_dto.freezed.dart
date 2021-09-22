// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'adt_service_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdtServiceDto _$AdtServiceDtoFromJson(Map<String, dynamic> json) {
  return _AdtServiceDto.fromJson(json);
}

/// @nodoc
class _$AdtServiceDtoTearOff {
  const _$AdtServiceDtoTearOff();

  _AdtServiceDto call(
      {required int? threeTimes,
      required int? fiveTimes,
      required int? tenTimes}) {
    return _AdtServiceDto(
      threeTimes: threeTimes,
      fiveTimes: fiveTimes,
      tenTimes: tenTimes,
    );
  }

  AdtServiceDto fromJson(Map<String, Object> json) {
    return AdtServiceDto.fromJson(json);
  }
}

/// @nodoc
const $AdtServiceDto = _$AdtServiceDtoTearOff();

/// @nodoc
mixin _$AdtServiceDto {
  int? get threeTimes => throw _privateConstructorUsedError;
  int? get fiveTimes => throw _privateConstructorUsedError;
  int? get tenTimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdtServiceDtoCopyWith<AdtServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdtServiceDtoCopyWith<$Res> {
  factory $AdtServiceDtoCopyWith(
          AdtServiceDto value, $Res Function(AdtServiceDto) then) =
      _$AdtServiceDtoCopyWithImpl<$Res>;
  $Res call({int? threeTimes, int? fiveTimes, int? tenTimes});
}

/// @nodoc
class _$AdtServiceDtoCopyWithImpl<$Res>
    implements $AdtServiceDtoCopyWith<$Res> {
  _$AdtServiceDtoCopyWithImpl(this._value, this._then);

  final AdtServiceDto _value;
  // ignore: unused_field
  final $Res Function(AdtServiceDto) _then;

  @override
  $Res call({
    Object? threeTimes = freezed,
    Object? fiveTimes = freezed,
    Object? tenTimes = freezed,
  }) {
    return _then(_value.copyWith(
      threeTimes: threeTimes == freezed
          ? _value.threeTimes
          : threeTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      fiveTimes: fiveTimes == freezed
          ? _value.fiveTimes
          : fiveTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      tenTimes: tenTimes == freezed
          ? _value.tenTimes
          : tenTimes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AdtServiceDtoCopyWith<$Res>
    implements $AdtServiceDtoCopyWith<$Res> {
  factory _$AdtServiceDtoCopyWith(
          _AdtServiceDto value, $Res Function(_AdtServiceDto) then) =
      __$AdtServiceDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? threeTimes, int? fiveTimes, int? tenTimes});
}

/// @nodoc
class __$AdtServiceDtoCopyWithImpl<$Res>
    extends _$AdtServiceDtoCopyWithImpl<$Res>
    implements _$AdtServiceDtoCopyWith<$Res> {
  __$AdtServiceDtoCopyWithImpl(
      _AdtServiceDto _value, $Res Function(_AdtServiceDto) _then)
      : super(_value, (v) => _then(v as _AdtServiceDto));

  @override
  _AdtServiceDto get _value => super._value as _AdtServiceDto;

  @override
  $Res call({
    Object? threeTimes = freezed,
    Object? fiveTimes = freezed,
    Object? tenTimes = freezed,
  }) {
    return _then(_AdtServiceDto(
      threeTimes: threeTimes == freezed
          ? _value.threeTimes
          : threeTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      fiveTimes: fiveTimes == freezed
          ? _value.fiveTimes
          : fiveTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      tenTimes: tenTimes == freezed
          ? _value.tenTimes
          : tenTimes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdtServiceDto extends _AdtServiceDto {
  const _$_AdtServiceDto(
      {required this.threeTimes,
      required this.fiveTimes,
      required this.tenTimes})
      : super._();

  factory _$_AdtServiceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AdtServiceDtoFromJson(json);

  @override
  final int? threeTimes;
  @override
  final int? fiveTimes;
  @override
  final int? tenTimes;

  @override
  String toString() {
    return 'AdtServiceDto(threeTimes: $threeTimes, fiveTimes: $fiveTimes, tenTimes: $tenTimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdtServiceDto &&
            (identical(other.threeTimes, threeTimes) ||
                const DeepCollectionEquality()
                    .equals(other.threeTimes, threeTimes)) &&
            (identical(other.fiveTimes, fiveTimes) ||
                const DeepCollectionEquality()
                    .equals(other.fiveTimes, fiveTimes)) &&
            (identical(other.tenTimes, tenTimes) ||
                const DeepCollectionEquality()
                    .equals(other.tenTimes, tenTimes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(threeTimes) ^
      const DeepCollectionEquality().hash(fiveTimes) ^
      const DeepCollectionEquality().hash(tenTimes);

  @JsonKey(ignore: true)
  @override
  _$AdtServiceDtoCopyWith<_AdtServiceDto> get copyWith =>
      __$AdtServiceDtoCopyWithImpl<_AdtServiceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AdtServiceDtoToJson(this);
  }
}

abstract class _AdtServiceDto extends AdtServiceDto {
  const factory _AdtServiceDto(
      {required int? threeTimes,
      required int? fiveTimes,
      required int? tenTimes}) = _$_AdtServiceDto;
  const _AdtServiceDto._() : super._();

  factory _AdtServiceDto.fromJson(Map<String, dynamic> json) =
      _$_AdtServiceDto.fromJson;

  @override
  int? get threeTimes => throw _privateConstructorUsedError;
  @override
  int? get fiveTimes => throw _privateConstructorUsedError;
  @override
  int? get tenTimes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdtServiceDtoCopyWith<_AdtServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
