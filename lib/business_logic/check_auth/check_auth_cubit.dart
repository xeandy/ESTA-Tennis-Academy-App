import 'package:academy_app/data/repository/auth/i_auth.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'check_auth_state.dart';
part 'check_auth_cubit.freezed.dart';

@injectable
class CheckAuthCubit extends Cubit<CheckAuthState> {
  final IAuth iAuth;

  CheckAuthCubit(this.iAuth) : super(CheckAuthState.initial());

  Future<void> checkAuthRequest() async {
    final userOption = await iAuth.getUser();
    emit(
      userOption.fold(
        () => CheckAuthState.unauthenticated(),
        (_) => CheckAuthState.authenticated(),
      ),
    );
  }

  Future<void> signOut() async {
    await iAuth.signout();
    emit(CheckAuthState.unauthenticated());
  }
}
