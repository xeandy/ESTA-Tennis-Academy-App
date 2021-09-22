part of 'get_users_cubit.dart';

@freezed
abstract class GetUsersState with _$GetUsersState {
  const factory GetUsersState.initial() = _Initial;
  const factory GetUsersState.loadInProgress() = _LoadInProgress;
  const factory GetUsersState.loadSuccess(List<UserData> users) = _LoadSuccess;
  const factory GetUsersState.loadFailure(FirestoreFailure userDataFailure) =
      _LoadFailure;
}
