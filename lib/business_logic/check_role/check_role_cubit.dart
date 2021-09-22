import 'dart:async';

import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/data/repository/auth/i_auth.dart';
import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'check_role_state.dart';
part 'check_role_cubit.freezed.dart';

@injectable
class CheckRoleCubit extends Cubit<CheckRoleState> {
  final IUserRepo iUserRepo;
  final IAuth iAuth;
  final CheckAuthCubit checkAuthCubit;
  CheckRoleCubit(this.iUserRepo, this.checkAuthCubit, this.iAuth)
      : super(CheckRoleState.initial());
  //     {
  //   checkAuthCubitstreamSubscription = checkAuthCubit.stream.listen(
  //     (checkAuthState) {
  //       if (checkAuthState == CheckAuthState.authenticated()) {
  //         checkRole();
  //       } else if (checkAuthState == CheckAuthState.unauthenticated()) {
  //         return emit(CheckRoleState.user());
  //       }
  //     },
  //   );
  // }
  StreamSubscription? streamSubscription;
  StreamSubscription? checkAuthCubitstreamSubscription;

  Future<void> checkRole() async {
    final userOption = await iAuth.getUser();
    userOption.fold(
      () => emit(CheckRoleState.unauthenticated()),
      (_) => {
        streamSubscription = iUserRepo.getUserData().listen(
          (failureOrSuccess) {
            failureOrSuccess.fold(
              (failure) => emit(
                CheckRoleState.loadFailure(failure),
              ),
              (userData) {
                if (userData.role == 'admin') {
                  return emit(
                    CheckRoleState.admin(),
                  );
                } else {
                  return emit(
                    CheckRoleState.user(),
                  );
                }
              },
            );
          },
        ),
      },
    );
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    checkAuthCubitstreamSubscription?.cancel();

    return super.close();
  }
}
