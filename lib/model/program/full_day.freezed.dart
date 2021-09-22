// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'full_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FullDayTearOff {
  const _$FullDayTearOff();

  _FullDay call({required String? name, required int? price}) {
    return _FullDay(
      name: name,
      price: price,
    );
  }
}

/// @nodoc
const $FullDay = _$FullDayTearOff();

/// @nodoc
mixin _$FullDay {
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FullDayCopyWith<FullDay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullDayCopyWith<$Res> {
  factory $FullDayCopyWith(FullDay value, $Res Function(FullDay) then) =
      _$FullDayCopyWithImpl<$Res>;
  $Res call({String? name, int? price});
}

/// @nodoc
class _$FullDayCopyWithImpl<$Res> implements $FullDayCopyWith<$Res> {
  _$FullDayCopyWithImpl(this._value, this._then);

  final FullDay _value;
  // ignore: unused_field
  final $Res Function(FullDay) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FullDayCopyWith<$Res> implements $FullDayCopyWith<$Res> {
  factory _$FullDayCopyWith(_FullDay value, $Res Function(_FullDay) then) =
      __$FullDayCopyWithImpl<$Res>;
  @override
  $Res call({String? name, int? price});
}

/// @nodoc
class __$FullDayCopyWithImpl<$Res> extends _$FullDayCopyWithImpl<$Res>
    implements _$FullDayCopyWith<$Res> {
  __$FullDayCopyWithImpl(_FullDay _value, $Res Function(_FullDay) _then)
      : super(_value, (v) => _then(v as _FullDay));

  @override
  _FullDay get _value => super._value as _FullDay;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_FullDay(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FullDay implements _FullDay {
  const _$_FullDay({required this.name, required this.price});

  @override
  final String? name;
  @override
  final int? price;

  @override
  String toString() {
    return 'FullDay(name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullDay &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$FullDayCopyWith<_FullDay> get copyWith =>
      __$FullDayCopyWithImpl<_FullDay>(this, _$identity);
}

abstract class _FullDay implements FullDay {
  const factory _FullDay({required String? name, required int? price}) =
      _$_FullDay;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FullDayCopyWith<_FullDay> get copyWith =>
      throw _privateConstructorUsedError;
}
