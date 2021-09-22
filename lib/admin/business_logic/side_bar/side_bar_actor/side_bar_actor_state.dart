part of 'side_bar_actor_cubit.dart';

@freezed
abstract class SideBarActorState with _$SideBarActorState {
  const factory SideBarActorState({
    required double xOffset,
  }) = _SideBarActorState;

  factory SideBarActorState.initial() => SideBarActorState(
        xOffset: 0,
      );
}
