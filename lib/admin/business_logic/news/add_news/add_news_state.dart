part of 'add_news_cubit.dart';

@freezed
abstract class AddNewsState with _$AddNewsState {
  const factory AddNewsState({
    required XFile newsImg,
    required News news,
    required bool isAdded,
    required bool isAdding,
  }) = _AddNewsState;

  factory AddNewsState.initial() => AddNewsState(
        newsImg: XFile(''),
        isAdded: false,
        isAdding: false,
        news: News.empty(),
      );
}
