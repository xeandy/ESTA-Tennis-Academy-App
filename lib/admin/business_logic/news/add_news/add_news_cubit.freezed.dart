// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddNewsStateTearOff {
  const _$AddNewsStateTearOff();

  _AddNewsState call(
      {required XFile newsImg,
      required News news,
      required bool isAdded,
      required bool isAdding}) {
    return _AddNewsState(
      newsImg: newsImg,
      news: news,
      isAdded: isAdded,
      isAdding: isAdding,
    );
  }
}

/// @nodoc
const $AddNewsState = _$AddNewsStateTearOff();

/// @nodoc
mixin _$AddNewsState {
  XFile get newsImg => throw _privateConstructorUsedError;
  News get news => throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewsStateCopyWith<AddNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewsStateCopyWith<$Res> {
  factory $AddNewsStateCopyWith(
          AddNewsState value, $Res Function(AddNewsState) then) =
      _$AddNewsStateCopyWithImpl<$Res>;
  $Res call({XFile newsImg, News news, bool isAdded, bool isAdding});

  $NewsCopyWith<$Res> get news;
}

/// @nodoc
class _$AddNewsStateCopyWithImpl<$Res> implements $AddNewsStateCopyWith<$Res> {
  _$AddNewsStateCopyWithImpl(this._value, this._then);

  final AddNewsState _value;
  // ignore: unused_field
  final $Res Function(AddNewsState) _then;

  @override
  $Res call({
    Object? newsImg = freezed,
    Object? news = freezed,
    Object? isAdded = freezed,
    Object? isAdding = freezed,
  }) {
    return _then(_value.copyWith(
      newsImg: newsImg == freezed
          ? _value.newsImg
          : newsImg // ignore: cast_nullable_to_non_nullable
              as XFile,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as News,
      isAdded: isAdded == freezed
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: isAdding == freezed
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NewsCopyWith<$Res> get news {
    return $NewsCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc
abstract class _$AddNewsStateCopyWith<$Res>
    implements $AddNewsStateCopyWith<$Res> {
  factory _$AddNewsStateCopyWith(
          _AddNewsState value, $Res Function(_AddNewsState) then) =
      __$AddNewsStateCopyWithImpl<$Res>;
  @override
  $Res call({XFile newsImg, News news, bool isAdded, bool isAdding});

  @override
  $NewsCopyWith<$Res> get news;
}

/// @nodoc
class __$AddNewsStateCopyWithImpl<$Res> extends _$AddNewsStateCopyWithImpl<$Res>
    implements _$AddNewsStateCopyWith<$Res> {
  __$AddNewsStateCopyWithImpl(
      _AddNewsState _value, $Res Function(_AddNewsState) _then)
      : super(_value, (v) => _then(v as _AddNewsState));

  @override
  _AddNewsState get _value => super._value as _AddNewsState;

  @override
  $Res call({
    Object? newsImg = freezed,
    Object? news = freezed,
    Object? isAdded = freezed,
    Object? isAdding = freezed,
  }) {
    return _then(_AddNewsState(
      newsImg: newsImg == freezed
          ? _value.newsImg
          : newsImg // ignore: cast_nullable_to_non_nullable
              as XFile,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as News,
      isAdded: isAdded == freezed
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: isAdding == freezed
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddNewsState implements _AddNewsState {
  const _$_AddNewsState(
      {required this.newsImg,
      required this.news,
      required this.isAdded,
      required this.isAdding});

  @override
  final XFile newsImg;
  @override
  final News news;
  @override
  final bool isAdded;
  @override
  final bool isAdding;

  @override
  String toString() {
    return 'AddNewsState(newsImg: $newsImg, news: $news, isAdded: $isAdded, isAdding: $isAdding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNewsState &&
            (identical(other.newsImg, newsImg) ||
                const DeepCollectionEquality()
                    .equals(other.newsImg, newsImg)) &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)) &&
            (identical(other.isAdded, isAdded) ||
                const DeepCollectionEquality()
                    .equals(other.isAdded, isAdded)) &&
            (identical(other.isAdding, isAdding) ||
                const DeepCollectionEquality()
                    .equals(other.isAdding, isAdding)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsImg) ^
      const DeepCollectionEquality().hash(news) ^
      const DeepCollectionEquality().hash(isAdded) ^
      const DeepCollectionEquality().hash(isAdding);

  @JsonKey(ignore: true)
  @override
  _$AddNewsStateCopyWith<_AddNewsState> get copyWith =>
      __$AddNewsStateCopyWithImpl<_AddNewsState>(this, _$identity);
}

abstract class _AddNewsState implements AddNewsState {
  const factory _AddNewsState(
      {required XFile newsImg,
      required News news,
      required bool isAdded,
      required bool isAdding}) = _$_AddNewsState;

  @override
  XFile get newsImg => throw _privateConstructorUsedError;
  @override
  News get news => throw _privateConstructorUsedError;
  @override
  bool get isAdded => throw _privateConstructorUsedError;
  @override
  bool get isAdding => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddNewsStateCopyWith<_AddNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
