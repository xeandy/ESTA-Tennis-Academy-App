// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

  _News call(
      {required String? coachName,
      required String? imgUrl,
      required String? content,
      required String? coachImgUrl,
      required String? newsId}) {
    return _News(
      coachName: coachName,
      imgUrl: imgUrl,
      content: content,
      coachImgUrl: coachImgUrl,
      newsId: newsId,
    );
  }
}

/// @nodoc
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  String? get coachName => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get coachImgUrl => throw _privateConstructorUsedError;
  String? get newsId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {String? coachName,
      String? imgUrl,
      String? content,
      String? coachImgUrl,
      String? newsId});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

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
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? coachName,
      String? imgUrl,
      String? content,
      String? coachImgUrl,
      String? newsId});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object? coachName = freezed,
    Object? imgUrl = freezed,
    Object? content = freezed,
    Object? coachImgUrl = freezed,
    Object? newsId = freezed,
  }) {
    return _then(_News(
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

class _$_News implements _News {
  const _$_News(
      {required this.coachName,
      required this.imgUrl,
      required this.content,
      required this.coachImgUrl,
      required this.newsId});

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
    return 'News(coachName: $coachName, imgUrl: $imgUrl, content: $content, coachImgUrl: $coachImgUrl, newsId: $newsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _News &&
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
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);
}

abstract class _News implements News {
  const factory _News(
      {required String? coachName,
      required String? imgUrl,
      required String? content,
      required String? coachImgUrl,
      required String? newsId}) = _$_News;

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
  _$NewsCopyWith<_News> get copyWith => throw _privateConstructorUsedError;
}
