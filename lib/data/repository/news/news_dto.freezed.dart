// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDTO _$NewsDTOFromJson(Map<String, dynamic> json) {
  return _NewsDTO.fromJson(json);
}

/// @nodoc
class _$NewsDTOTearOff {
  const _$NewsDTOTearOff();

  _NewsDTO call(
      {required String? coachName,
      required String? imgUrl,
      required String? content,
      required String? coachImgUrl,
      required String? newsId}) {
    return _NewsDTO(
      coachName: coachName,
      imgUrl: imgUrl,
      content: content,
      coachImgUrl: coachImgUrl,
      newsId: newsId,
    );
  }

  NewsDTO fromJson(Map<String, Object> json) {
    return NewsDTO.fromJson(json);
  }
}

/// @nodoc
const $NewsDTO = _$NewsDTOTearOff();

/// @nodoc
mixin _$NewsDTO {
  String? get coachName => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get coachImgUrl => throw _privateConstructorUsedError;
  String? get newsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDTOCopyWith<NewsDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDTOCopyWith<$Res> {
  factory $NewsDTOCopyWith(NewsDTO value, $Res Function(NewsDTO) then) =
      _$NewsDTOCopyWithImpl<$Res>;
  $Res call(
      {String? coachName,
      String? imgUrl,
      String? content,
      String? coachImgUrl,
      String? newsId});
}

/// @nodoc
class _$NewsDTOCopyWithImpl<$Res> implements $NewsDTOCopyWith<$Res> {
  _$NewsDTOCopyWithImpl(this._value, this._then);

  final NewsDTO _value;
  // ignore: unused_field
  final $Res Function(NewsDTO) _then;

  @override
  $Res call({
    Object? coachName = freezed,
    Object? imgUrl = freezed,
    Object? content = freezed,
    Object? coachImgUrl = freezed,
    Object? newsId = freezed,
  }) {
    return _then(_value.copyWith(
      coachName: coachName == freezed
          ? _value.coachName
          : coachName // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      coachImgUrl: coachImgUrl == freezed
          ? _value.coachImgUrl
          : coachImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      newsId: newsId == freezed
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NewsDTOCopyWith<$Res> implements $NewsDTOCopyWith<$Res> {
  factory _$NewsDTOCopyWith(_NewsDTO value, $Res Function(_NewsDTO) then) =
      __$NewsDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? coachName,
      String? imgUrl,
      String? content,
      String? coachImgUrl,
      String? newsId});
}

/// @nodoc
class __$NewsDTOCopyWithImpl<$Res> extends _$NewsDTOCopyWithImpl<$Res>
    implements _$NewsDTOCopyWith<$Res> {
  __$NewsDTOCopyWithImpl(_NewsDTO _value, $Res Function(_NewsDTO) _then)
      : super(_value, (v) => _then(v as _NewsDTO));

  @override
  _NewsDTO get _value => super._value as _NewsDTO;

  @override
  $Res call({
    Object? coachName = freezed,
    Object? imgUrl = freezed,
    Object? content = freezed,
    Object? coachImgUrl = freezed,
    Object? newsId = freezed,
  }) {
    return _then(_NewsDTO(
      coachName: coachName == freezed
          ? _value.coachName
          : coachName // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      coachImgUrl: coachImgUrl == freezed
          ? _value.coachImgUrl
          : coachImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      newsId: newsId == freezed
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDTO extends _NewsDTO {
  const _$_NewsDTO(
      {required this.coachName,
      required this.imgUrl,
      required this.content,
      required this.coachImgUrl,
      required this.newsId})
      : super._();

  factory _$_NewsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsDTOFromJson(json);

  @override
  final String? coachName;
  @override
  final String? imgUrl;
  @override
  final String? content;
  @override
  final String? coachImgUrl;
  @override
  final String? newsId;

  @override
  String toString() {
    return 'NewsDTO(coachName: $coachName, imgUrl: $imgUrl, content: $content, coachImgUrl: $coachImgUrl, newsId: $newsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsDTO &&
            (identical(other.coachName, coachName) ||
                const DeepCollectionEquality()
                    .equals(other.coachName, coachName)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.coachImgUrl, coachImgUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coachImgUrl, coachImgUrl)) &&
            (identical(other.newsId, newsId) ||
                const DeepCollectionEquality().equals(other.newsId, newsId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coachName) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(coachImgUrl) ^
      const DeepCollectionEquality().hash(newsId);

  @JsonKey(ignore: true)
  @override
  _$NewsDTOCopyWith<_NewsDTO> get copyWith =>
      __$NewsDTOCopyWithImpl<_NewsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsDTOToJson(this);
  }
}

abstract class _NewsDTO extends NewsDTO {
  const factory _NewsDTO(
      {required String? coachName,
      required String? imgUrl,
      required String? content,
      required String? coachImgUrl,
      required String? newsId}) = _$_NewsDTO;
  const _NewsDTO._() : super._();

  factory _NewsDTO.fromJson(Map<String, dynamic> json) = _$_NewsDTO.fromJson;

  @override
  String? get coachName => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get coachImgUrl => throw _privateConstructorUsedError;
  @override
  String? get newsId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsDTOCopyWith<_NewsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
