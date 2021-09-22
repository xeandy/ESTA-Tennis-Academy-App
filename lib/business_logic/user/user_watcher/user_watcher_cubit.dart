import 'dart:async';

import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_watcher_state.dart';
part 'user_watcher_cubit.freezed.dart';

@injectable
class UserWatcherCubit extends Cubit<UserWatcherState> {
  final IUserRepo iUserRepo;
  UserWatcherCubit(this.iUserRepo) : super(UserWatcherState.initial());

  StreamSubscription? streamSubscription;

  Future<void> getUserData() async {
    streamSubscription = iUserRepo.getUserData().listen(
      (failureOrFetch) {
        emit(
          failureOrFetch.fold(
            (failure) => UserWatcherState.loadFailure(failure),
            (userData) => UserWatcherState.loadSuccess(userData),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    streamSubscription!.cancel();
    return super.close();
  }
}
