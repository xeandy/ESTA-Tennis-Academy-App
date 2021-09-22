import 'dart:async';

import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:academy_app/model/application_form/application_form.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_application_form_state.dart';
part 'get_application_form_cubit.freezed.dart';

@injectable
class GetApplicationFormCubit extends Cubit<GetApplicationFormState> {
  GetApplicationFormCubit(this.iUserRepo)
      : super(GetApplicationFormState.initial());
  final IUserRepo iUserRepo;

  late StreamSubscription streamSubscription;

  Future<void> getApplicationForm(String userId) async {
    streamSubscription = iUserRepo.getApplicationForm(userId).listen(
      (failureOrSucces) {
        failureOrSucces.fold(
          (failure) => emit(
            GetApplicationFormState.loadFailure(failure),
          ),
          (applicationForm) => emit(
            GetApplicationFormState.loadSuccess(applicationForm),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
