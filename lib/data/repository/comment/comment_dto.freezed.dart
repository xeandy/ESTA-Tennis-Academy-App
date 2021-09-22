// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDTO _$CommentDTOFromJson(Map<String, dynamic> json) {
  return _CommentDTO.fromJson(json);
}

/// @nodoc
class _$CommentDTOTearOff {
  const _$CommentDTOTearOff();

  _CommentDTO call(
      {required String? comment,
      required String? userName,
      required String? commentId,
      required String? userImgUrl,
      required String? time}) {
    return _CommentDTO(
      comment: comment,
      userName: userName,
      commentId: commentId,
      userImgUrl: userImgUrl,
      time: time,
    );
  }

  CommentDTO fromJson(Map<String, Object> json) {
    return CommentDTO.fromJson(json);
  }
}

/// @nodoc
const $CommentDTO = _$CommentDTOTearOff();

/// @nodoc
mixin _$CommentDTO {
  String? get comment => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get commentId => throw _privateConstructorUsedError;
  String? get userImgUrl => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDTOCopyWith<CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDTOCopyWith<$Res> {
  factory $CommentDTOCopyWith(
          CommentDTO value, $Res Function(CommentDTO) then) =
      _$CommentDTOCopyWithImpl<$Res>;
  $Res call(
      {String? comment,
      String? userName,
      String? commentId,
      String? userImgUrl,
      String? time});
}

/// @nodoc
class _$CommentDTOCopyWithImpl<$Res> implements $CommentDTOCopyWith<$Res> {
  _$CommentDTOCopyWithImpl(this._value, this._then);

  final CommentDTO _value;
  // ignore: unused_field
  final $Res Function(CommentDTO) _then;

  @override
  $Res call({
    Object? comment = freezed,
    Object? userName = freezed,
    Object? commentId = freezed,
    Object? userImgUrl = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userImgUrl: userImgUrl == freezed
          ? _value.userImgUrl
          : userImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommentDTOCopyWith<$Res> implements $CommentDTOCopyWith<$Res> {
  factory _$CommentDTOCopyWith(
          _CommentDTO value, $Res Function(_CommentDTO) then) =
      __$CommentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? comment,
      String? userName,
      String? commentId,
      String? userImgUrl,
      String? time});
}

/// @nodoc
class __$CommentDTOCopyWithImpl<$Res> extends _$CommentDTOCopyWithImpl<$Res>
    implements _$CommentDTOCopyWith<$Res> {
  __$CommentDTOCopyWithImpl(
      _CommentDTO _value, $Res Function(_CommentDTO) _then)
      : super(_value, (v) => _then(v as _CommentDTO));

  @override
  _CommentDTO get _value => super._value as _CommentDTO;

  @override
  $Res call({
    Object? comment = freezed,
    Object? userName = freezed,
    Object? commentId = freezed,
    Object? userImgUrl = freezed,
    Object? time = freezed,
  }) {
    return _then(_CommentDTO(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userImgUrl: userImgUrl == freezed
          ? _value.userImgUrl
          : userImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentDTO extends _CommentDTO {
  const _$_CommentDTO(
      {required this.comment,
      required this.userName,
      required this.commentId,
      required this.userImgUrl,
      required this.time})
      : super._();

  factory _$_CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentDTOFromJson(json);

  @override
  final String? comment;
  @override
  final String? userName;
  @override
  final String? commentId;
  @override
  final String? userImgUrl;
  @override
  final String? time;

  @override
  String toString() {
    return 'CommentDTO(comment: $comment, userName: $userName, commentId: $commentId, userImgUrl: $userImgUrl, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDTO &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.commentId, commentId) ||
                const DeepCollectionEquality()
                    .equals(other.commentId, commentId)) &&
            (identical(other.userImgUrl, userImgUrl) ||
                const DeepCollectionEquality()
                    .equals(other.userImgUrl, userImgUrl)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(commentId) ^
      const DeepCollectionEquality().hash(userImgUrl) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$CommentDTOCopyWith<_CommentDTO> get copyWith =>
      __$CommentDTOCopyWithImpl<_CommentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDTOToJson(this);
  }
}

abstract class _CommentDTO extends CommentDTO {
  const factory _CommentDTO(
      {required String? comment,
      required String? userName,
      required String? commentId,
      required String? userImgUrl,
      required String? time}) = _$_CommentDTO;
  const _CommentDTO._() : super._();

  factory _CommentDTO.fromJson(Map<String, dynamic> json) =
      _$_CommentDTO.fromJson;

  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  String? get commentId => throw _privateConstructorUsedError;
  @override
  String? get userImgUrl => throw _privateConstructorUsedError;
  @override
  String? get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentDTOCopyWith<_CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
