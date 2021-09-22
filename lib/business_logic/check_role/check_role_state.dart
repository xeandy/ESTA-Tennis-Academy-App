part of 'check_role_cubit.dart';

@freezed
abstract class CheckRoleState with _$CheckRoleState {
  const factory CheckRoleState.initial() = _Initial;
  const factory CheckRoleState.admin() = _Admin;
  const factory CheckRoleState.user() = _User;
  const factory CheckRoleState.unauthenticated() = _Unauthenticated;
  const factory CheckRoleState.loadFailure(FirestoreFailure failure) =
      _LoadFailure;
}
