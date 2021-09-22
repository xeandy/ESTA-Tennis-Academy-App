import 'dart:async';

import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_users_state.dart';
part 'get_users_cubit.freezed.dart';

@injectable
class GetUsersCubit extends Cubit<GetUsersState> {
  final IUserRepo iUserRepo;
  GetUsersCubit(this.iUserRepo) : super(GetUsersState.initial());
  String query = '';
  List<UserData> filterUsers = [];
  late StreamSubscription streamSubscription;
  Future<void> getUsers() async {
    streamSubscription = iUserRepo.getUsers(query).listen(
      (failureOrSucces) {
        failureOrSucces.fold(
          (failure) => emit(
            GetUsersState.loadFailure(failure),
          ),
          (users) {
            filterUsers = users;
            return emit(
              GetUsersState.loadSuccess(users),
            );
          },
        );
      },
    );
  }

  void listChanged(List<UserData> users, String queryChanged) {
    query = queryChanged;
    filterUsers = users.where((user) {
      final userName = user.userName!.getOrCrash().toLowerCase();
      final search = queryChanged.toLowerCase();
      return userName.contains(search);
    }).toList();
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
