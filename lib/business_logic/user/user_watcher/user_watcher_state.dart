part of 'user_watcher_cubit.dart';

@freezed
abstract class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState.initial() = _Initial;
  const factory UserWatcherState.loadInProgress() = _LoadInProgress;

  const factory UserWatcherState.loadSuccess(UserData userData) = _LoadSuccess;
  const factory UserWatcherState.loadFailure(FirestoreFailure userDataFailure) =
      _LoadFailure;
}
