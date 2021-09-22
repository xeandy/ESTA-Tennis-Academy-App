// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionDTO _$SessionDTOFromJson(Map<String, dynamic> json) {
  return _SessionDTO.fromJson(json);
}

/// @nodoc
class _$SessionDTOTearOff {
  const _$SessionDTOTearOff();

  _SessionDTO call({required String? times, required int? price}) {
    return _SessionDTO(
      times: times,
      price: price,
    );
  }

  SessionDTO fromJson(Map<String, Object> json) {
    return SessionDTO.fromJson(json);
  }
}

/// @nodoc
const $SessionDTO = _$SessionDTOTearOff();

/// @nodoc
mixin _$SessionDTO {
  String? get times => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDTOCopyWith<SessionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDTOCopyWith<$Res> {
  factory $SessionDTOCopyWith(
          SessionDTO value, $Res Function(SessionDTO) then) =
      _$SessionDTOCopyWithImpl<$Res>;
  $Res call({String? times, int? price});
}

/// @nodoc
class _$SessionDTOCopyWithImpl<$Res> implements $SessionDTOCopyWith<$Res> {
  _$SessionDTOCopyWithImpl(this._value, this._then);

  final SessionDTO _value;
  // ignore: unused_field
  final $Res Function(SessionDTO) _then;

  @override
  $Res call({
    Object? times = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SessionDTOCopyWith<$Res> implements $SessionDTOCopyWith<$Res> {
  factory _$SessionDTOCopyWith(
          _SessionDTO value, $Res Function(_SessionDTO) then) =
      __$SessionDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? times, int? price});
}

/// @nodoc
class __$SessionDTOCopyWithImpl<$Res> extends _$SessionDTOCopyWithImpl<$Res>
    implements _$SessionDTOCopyWith<$Res> {
  __$SessionDTOCopyWithImpl(
      _SessionDTO _value, $Res Function(_SessionDTO) _then)
      : super(_value, (v) => _then(v as _SessionDTO));

  @override
  _SessionDTO get _value => super._value as _SessionDTO;

  @override
  $Res call({
    Object? times = freezed,
    Object? price = freezed,
  }) {
    return _then(_SessionDTO(
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
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
class _$_SessionDTO extends _SessionDTO {
  const _$_SessionDTO({required this.times, required this.price}) : super._();

  factory _$_SessionDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_SessionDTOFromJson(json);

  @override
  final String? times;
  @override
  final int? price;

  @override
  String toString() {
    return 'SessionDTO(times: $times, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionDTO &&
            (identical(other.times, times) ||
                const DeepCollectionEquality().equals(other.times, times)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(times) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$SessionDTOCopyWith<_SessionDTO> get copyWith =>
      __$SessionDTOCopyWithImpl<_SessionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionDTOToJson(this);
  }
}

abstract class _SessionDTO extends SessionDTO {
  const factory _SessionDTO({required String? times, required int? price}) =
      _$_SessionDTO;
  const _SessionDTO._() : super._();

  factory _SessionDTO.fromJson(Map<String, dynamic> json) =
      _$_SessionDTO.fromJson;

  @override
  String? get times => throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionDTOCopyWith<_SessionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
