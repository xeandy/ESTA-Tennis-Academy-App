// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_comment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateCommentStateTearOff {
  const _$CreateCommentStateTearOff();

  _CreateCommentState call({required Comment comment}) {
    return _CreateCommentState(
      comment: comment,
    );
  }
}

/// @nodoc
const $CreateCommentState = _$CreateCommentStateTearOff();

/// @nodoc
mixin _$CreateCommentState {
  Comment get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCommentStateCopyWith<CreateCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentStateCopyWith<$Res> {
  factory $CreateCommentStateCopyWith(
          CreateCommentState value, $Res Function(CreateCommentState) then) =
      _$CreateCommentStateCopyWithImpl<$Res>;
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$CreateCommentStateCopyWithImpl<$Res>
    implements $CreateCommentStateCopyWith<$Res> {
  _$CreateCommentStateCopyWithImpl(this._value, this._then);

  final CreateCommentState _value;
  // ignore: unused_field
  final $Res Function(CreateCommentState) _then;

  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }

  @override
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$CreateCommentStateCopyWith<$Res>
    implements $CreateCommentStateCopyWith<$Res> {
  factory _$CreateCommentStateCopyWith(
          _CreateCommentState value, $Res Function(_CreateCommentState) then) =
      __$CreateCommentStateCopyWithImpl<$Res>;
  @override
  $Res call({Comment comment});

  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$CreateCommentStateCopyWithImpl<$Res>
    extends _$CreateCommentStateCopyWithImpl<$Res>
    implements _$CreateCommentStateCopyWith<$Res> {
  __$CreateCommentStateCopyWithImpl(
      _CreateCommentState _value, $Res Function(_CreateCommentState) _then)
      : super(_value, (v) => _then(v as _CreateCommentState));

  @override
  _CreateCommentState get _value => super._value as _CreateCommentState;

  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_CreateCommentState(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }
}

/// @nodoc

class _$_CreateCommentState implements _CreateCommentState {
  const _$_CreateCommentState({required this.comment});

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CreateCommentState(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCommentState &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$CreateCommentStateCopyWith<_CreateCommentState> get copyWith =>
      __$CreateCommentStateCopyWithImpl<_CreateCommentState>(this, _$identity);
}

abstract class _CreateCommentState implements CreateCommentState {
  const factory _CreateCommentState({required Comment comment}) =
      _$_CreateCommentState;

  @override
  Comment get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateCommentStateCopyWith<_CreateCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}
