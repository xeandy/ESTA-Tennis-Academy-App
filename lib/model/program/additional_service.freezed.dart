// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'additional_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdtServiceTearOff {
  const _$AdtServiceTearOff();

  _AdtService call(
      {required int? price3, required int? price5, required int? price10}) {
    return _AdtService(
      price3: price3,
      price5: price5,
      price10: price10,
    );
  }
}

/// @nodoc
const $AdtService = _$AdtServiceTearOff();

/// @nodoc
mixin _$AdtService {
  int? get price3 => throw _privateConstructorUsedError;
  int? get price5 => throw _privateConstructorUsedError;
  int? get price10 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdtServiceCopyWith<AdtService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdtServiceCopyWith<$Res> {
  factory $AdtServiceCopyWith(
          AdtService value, $Res Function(AdtService) then) =
      _$AdtServiceCopyWithImpl<$Res>;
  $Res call({int? price3, int? price5, int? price10});
}

/// @nodoc
class _$AdtServiceCopyWithImpl<$Res> implements $AdtServiceCopyWith<$Res> {
  _$AdtServiceCopyWithImpl(this._value, this._then);

  final AdtService _value;
  // ignore: unused_field
  final $Res Function(AdtService) _then;

  @override
  $Res call({
    Object? price3 = freezed,
    Object? price5 = freezed,
    Object? price10 = freezed,
  }) {
    return _then(_value.copyWith(
      price3: price3 == freezed
          ? _value.price3
          : price3 // ignore: cast_nullable_to_non_nullable
              as int?,
      price5: price5 == freezed
          ? _value.price5
          : price5 // ignore: cast_nullable_to_non_nullable
              as int?,
      price10: price10 == freezed
          ? _value.price10
          : price10 // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AdtServiceCopyWith<$Res> implements $AdtServiceCopyWith<$Res> {
  factory _$AdtServiceCopyWith(
          _AdtService value, $Res Function(_AdtService) then) =
      __$AdtServiceCopyWithImpl<$Res>;
  @override
  $Res call({int? price3, int? price5, int? price10});
}

/// @nodoc
class __$AdtServiceCopyWithImpl<$Res> extends _$AdtServiceCopyWithImpl<$Res>
    implements _$AdtServiceCopyWith<$Res> {
  __$AdtServiceCopyWithImpl(
      _AdtService _value, $Res Function(_AdtService) _then)
      : super(_value, (v) => _then(v as _AdtService));

  @override
  _AdtService get _value => super._value as _AdtService;

  @override
  $Res call({
    Object? price3 = freezed,
    Object? price5 = freezed,
    Object? price10 = freezed,
  }) {
    return _then(_AdtService(
      price3: price3 == freezed
          ? _value.price3
          : price3 // ignore: cast_nullable_to_non_nullable
              as int?,
      price5: price5 == freezed
          ? _value.price5
          : price5 // ignore: cast_nullable_to_non_nullable
              as int?,
      price10: price10 == freezed
          ? _value.price10
          : price10 // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AdtService implements _AdtService {
  const _$_AdtService(
      {required this.price3, required this.price5, required this.price10});

  @override
  final int? price3;
  @override
  final int? price5;
  @override
  final int? price10;

  @override
  String toString() {
    return 'AdtService(price3: $price3, price5: $price5, price10: $price10)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdtService &&
            (identical(other.price3, price3) ||
                const DeepCollectionEquality().equals(other.price3, price3)) &&
            (identical(other.price5, price5) ||
                const DeepCollectionEquality().equals(other.price5, price5)) &&
            (identical(other.price10, price10) ||
                const DeepCollectionEquality().equals(other.price10, price10)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(price3) ^
      const DeepCollectionEquality().hash(price5) ^
      const DeepCollectionEquality().hash(price10);

  @JsonKey(ignore: true)
  @override
  _$AdtServiceCopyWith<_AdtService> get copyWith =>
      __$AdtServiceCopyWithImpl<_AdtService>(this, _$identity);
}

abstract class _AdtService implements AdtService {
  const factory _AdtService(
      {required int? price3,
      required int? price5,
      required int? price10}) = _$_AdtService;

  @override
  int? get price3 => throw _privateConstructorUsedError;
  @override
  int? get price5 => throw _privateConstructorUsedError;
  @override
  int? get price10 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdtServiceCopyWith<_AdtService> get copyWith =>
      throw _privateConstructorUsedError;
}
