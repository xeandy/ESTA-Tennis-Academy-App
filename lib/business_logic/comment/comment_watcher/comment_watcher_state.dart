part of 'comment_watcher_cubit.dart';

@freezed
abstract class CommentWatcherState with _$CommentWatcherState {
  const factory CommentWatcherState.initial() = _Initial;

  const factory CommentWatcherState.loadInProgress() = _LoadInProgress;
  const factory CommentWatcherState.loadSuccess(List<Comment> comments) =
      _LoadSuccess;
  const factory CommentWatcherState.loadFailure(FirestoreFailure newsFailure) =
      _LoadFailure;
}
