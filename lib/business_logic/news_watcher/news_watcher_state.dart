part of 'news_watcher_cubit.dart';

@freezed
abstract class NewsWatcherState with _$NewsWatcherState {
  const factory NewsWatcherState.initial() = _Initial;

  const factory NewsWatcherState.loadInProgress() = _LoadInProgress;
  const factory NewsWatcherState.loadSuccess(List<News> news) = _LoadSuccess;
  const factory NewsWatcherState.loadFailure(FirestoreFailure newsFailure) =
      _LoadFailure;
}
