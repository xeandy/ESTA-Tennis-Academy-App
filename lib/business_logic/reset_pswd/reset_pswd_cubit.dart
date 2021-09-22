import 'package:academy_app/data/repository/auth/i_auth.dart';
import 'package:academy_app/model/domain/auth/auth_failures.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_pswd_state.dart';
part 'reset_pswd_cubit.freezed.dart';

@injectable
class ResetPswdCubit extends Cubit<ResetPswdState> {
  final IAuth iAuth;
  ResetPswdCubit(this.iAuth) : super(ResetPswdState.initial());

  void emailChanged(String email) {
    emit(
      state.copyWith(
        email: Email(email),
        authFailureOrSuccess: none(),
      ),
    );
  }

  Future<void> resetPassword() async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.email.isValid();
    if (isEmailValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        ),
      );
      failureOrSuccess = await iAuth.resetPassword(email: state.email);
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.always,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }

  void refreshState() {
    emit(ResetPswdState.initial());
  }
}
