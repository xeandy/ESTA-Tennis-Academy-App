part of 'side_bar_watcher_cubit.dart';

@freezed
abstract class SideBarWatcherState with _$SideBarWatcherState {
  const factory SideBarWatcherState.initial() = _Initial;
  const factory SideBarWatcherState.addNews() = _AddNews;
  const factory SideBarWatcherState.users() = _Users;
}
