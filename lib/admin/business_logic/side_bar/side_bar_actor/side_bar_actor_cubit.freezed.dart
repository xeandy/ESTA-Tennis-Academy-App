// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'side_bar_actor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SideBarActorStateTearOff {
  const _$SideBarActorStateTearOff();

  _SideBarActorState call({required double xOffset}) {
    return _SideBarActorState(
      xOffset: xOffset,
    );
  }
}

/// @nodoc
const $SideBarActorState = _$SideBarActorStateTearOff();

/// @nodoc
mixin _$SideBarActorState {
  double get xOffset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SideBarActorStateCopyWith<SideBarActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideBarActorStateCopyWith<$Res> {
  factory $SideBarActorStateCopyWith(
          SideBarActorState value, $Res Function(SideBarActorState) then) =
      _$SideBarActorStateCopyWithImpl<$Res>;
  $Res call({double xOffset});
}

/// @nodoc
class _$SideBarActorStateCopyWithImpl<$Res>
    implements $SideBarActorStateCopyWith<$Res> {
  _$SideBarActorStateCopyWithImpl(this._value, this._then);

  final SideBarActorState _value;
  // ignore: unused_field
  final $Res Function(SideBarActorState) _then;

  @override
  $Res call({
    Object? xOffset = freezed,
  }) {
    return _then(_value.copyWith(
      xOffset: xOffset == freezed
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SideBarActorStateCopyWith<$Res>
    implements $SideBarActorStateCopyWith<$Res> {
  factory _$SideBarActorStateCopyWith(
          _SideBarActorState value, $Res Function(_SideBarActorState) then) =
      __$SideBarActorStateCopyWithImpl<$Res>;
  @override
  $Res call({double xOffset});
}

/// @nodoc
class __$SideBarActorStateCopyWithImpl<$Res>
    extends _$SideBarActorStateCopyWithImpl<$Res>
    implements _$SideBarActorStateCopyWith<$Res> {
  __$SideBarActorStateCopyWithImpl(
      _SideBarActorState _value, $Res Function(_SideBarActorState) _then)
      : super(_value, (v) => _then(v as _SideBarActorState));

  @override
  _SideBarActorState get _value => super._value as _SideBarActorState;

  @override
  $Res call({
    Object? xOffset = freezed,
  }) {
    return _then(_SideBarActorState(
      xOffset: xOffset == freezed
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SideBarActorState implements _SideBarActorState {
  const _$_SideBarActorState({required this.xOffset});

  @override
  final double xOffset;

  @override
  String toString() {
    return 'SideBarActorState(xOffset: $xOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SideBarActorState &&
            (identical(other.xOffset, xOffset) ||
                const DeepCollectionEquality().equals(other.xOffset, xOffset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(xOffset);

  @JsonKey(ignore: true)
  @override
  _$SideBarActorStateCopyWith<_SideBarActorState> get copyWith =>
      __$SideBarActorStateCopyWithImpl<_SideBarActorState>(this, _$identity);
}

abstract class _SideBarActorState implements SideBarActorState {
  const factory _SideBarActorState({required double xOffset}) =
      _$_SideBarActorState;

  @override
  double get xOffset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SideBarActorStateCopyWith<_SideBarActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
