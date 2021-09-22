import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'side_bar_actor_state.dart';
part 'side_bar_actor_cubit.freezed.dart';

class SideBarActorCubit extends Cubit<SideBarActorState> {
  SideBarActorCubit() : super(SideBarActorState.initial());

  void openSideBar() {
    return emit(state.copyWith(xOffset: 200));
  }

  void closeSideBar() {
    return emit(state.copyWith(xOffset: 0));
  }
}
