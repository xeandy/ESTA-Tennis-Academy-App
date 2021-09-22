import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'side_bar_watcher_state.dart';
part 'side_bar_watcher_cubit.freezed.dart';

@injectable
class SideBarWatcherCubit extends Cubit<SideBarWatcherState> {
  SideBarWatcherCubit() : super(SideBarWatcherState.initial());

  void addNews() {
    return emit(SideBarWatcherState.addNews());
  }

  void users() {
    return emit(SideBarWatcherState.users());
  }
}
