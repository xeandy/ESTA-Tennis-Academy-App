import 'package:academy_app/data/repository/auth/i_auth.dart';
import 'package:academy_app/model/domain/auth/auth_failures.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final IAuth iAuth;
  SignInCubit(this.iAuth) : super(SignInState.initial());

  void emailChanged(String email) {
    emit(
      state.copyWith(
        email: Email(email),
        authFailureOrSuccess: none(),
      ),
    );
  }

  void passwordChanged(String password) {
    emit(
      state.copyWith(
        password: Password(password),
        authFailureOrSuccess: none(),
      ),
    );
  }

  Future<void> signInWithEmailAndPassword() async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        ),
      );
      failureOrSuccess = await iAuth.signInWithEmailAndPassword(
          email: state.email, password: state.password);
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.always,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> resetPassword() async {
    Either<AuthFailure, Unit>? failureOrSuccess1;

    final isEmailValid = state.email.isValid();
    if (isEmailValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        ),
      );
      failureOrSuccess1 = await iAuth.resetPassword(email: state.email);
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.always,
        authFailureOrSuccess: optionOf(failureOrSuccess1),
      ),
    );
  }
}
