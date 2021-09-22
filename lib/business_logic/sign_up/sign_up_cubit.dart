import 'package:academy_app/data/repository/auth/i_auth.dart';
import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:academy_app/model/application_form/application_form.dart';
import 'package:academy_app/model/domain/auth/auth_failures.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:academy_app/model/domain/core/value_objects.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../injection.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final IAuth iAuth;
  SignUpCubit(this.iAuth) : super(SignUpState.initial());

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

  void userNameChanged(String userName) {
    emit(
      state.copyWith(
        userName: UserName(userName),
        authFailureOrSuccess: none(),
      ),
    );
  }

  void confirmPasswordChanged(String confirmPassword) {
    emit(
      state.copyWith(
        confirmPassword: ConfirmPassword(confirmPassword, state.password),
        authFailureOrSuccess: none(),
      ),
    );
  }

  void playerFullNameChanged(String playerFullName) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          playerFullName: PlayerFullName(playerFullName),
        ),
      ),
    );
  }

  void dateOfBirhtChanged(String dateOfBirth) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          dateOfBirth: DateOfBirth(dateOfBirth),
        ),
      ),
    );
  }

  void levelChanged(String level) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          level: level,
        ),
      ),
    );
  }

  void parentOneNameChnaged(String parentOneName) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          parentOneName: ParentOneName(parentOneName),
        ),
      ),
    );
  }

  void parentOnePhoneNumberChanged(String parentOnePhoneNumber) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          parentOnePhoneNumber: ParentOnePhoneNumber(parentOnePhoneNumber),
        ),
      ),
    );
  }

  void parentTwoNameChanged(String parentTwoName) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          parentTwoName: ParentTwoName(parentTwoName),
        ),
      ),
    );
  }

  void parentTwopPhoneNumberChanged(String parentTwoPhoneNumber) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          parentTwoPhoneNumber: ParentTwoPhoneNumber(parentTwoPhoneNumber),
        ),
      ),
    );
  }

  void homeAddressChanged(String homeAddress) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          homeAddress: HomeAddress(homeAddress),
        ),
      ),
    );
  }

  void cityChanged(String city) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          city: City(city),
        ),
      ),
    );
  }

  void countryStateChanged(String countryState) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          countryState: CountryState(countryState),
        ),
      ),
    );
  }

  void zipCodeChanged(String zipCode) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          zipCode: ZipCode(zipCode),
        ),
      ),
    );
  }

  void preferredEmailChanged(String preferredEmail) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          preferredEmail: PreferredEmail(preferredEmail),
        ),
      ),
    );
  }

  void nativeLanguageChanged(String nativeLanguage) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          nativeLanguage: NativeLanguage(nativeLanguage),
        ),
      ),
    );
  }

  void emergencyNameChanged(String emergencyName) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          emergencyName: EmergencyName(emergencyName),
        ),
      ),
    );
  }

  void emergencyPhoneNumberChanged(String emergencyPhoneNumber) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          emergencyPhoneNumber: EmergencyPhoneNumber(emergencyPhoneNumber),
        ),
      ),
    );
  }

  void relationshipPlayerChanged(String relationshipPlayer) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          relationshipPlayer: RelationshipPlayer(relationshipPlayer),
        ),
      ),
    );
  }

  void hearAboutUsChanged(String hearAboutUs) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          hearAboutUs: hearAboutUs,
        ),
      ),
    );
  }

  void aboutHealthChanged(String aboutHealth) {
    emit(
      state.copyWith(
        applicationForm: state.applicationForm.copyWith(
          aboutHealth: aboutHealth,
        ),
      ),
    );
  }

  Future<bool> validateForm() async {
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    final isUserNameValid = state.userName.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();

    if (isEmailValid &&
        isPasswordValid &&
        isUserNameValid &&
        isConfirmPasswordValid) {
      return true;
    }
    emit(
      state.copyWith(
        showErrorMessage: AutovalidateMode.always,
      ),
    );
    return false;
  }

  Future<bool> validateApplicationForm() async {
    final isPlayerNameValid = state.applicationForm.playerFullName.isValid();
    final isDateOfBirthValid = state.applicationForm.dateOfBirth.isValid();
    final isLevelValid = state.applicationForm.level.isNotEmpty;
    final isParentOneNameValid = state.applicationForm.parentOneName.isValid();
    final isParentOnePhoneNumberValid =
        state.applicationForm.parentOnePhoneNumber.isValid();
    final isParentTwoNameValid = state.applicationForm.parentTwoName.isValid();
    final isParentTwoPhoneNumberValid =
        state.applicationForm.parentTwoPhoneNumber.isValid();
    final isHomeAddressValid = state.applicationForm.homeAddress.isValid();
    final isCityValid = state.applicationForm.city.isValid();
    final iscountryStateValid = state.applicationForm.countryState.isValid();
    final isZipCodeValid = state.applicationForm.zipCode.isValid();
    final isPreferredEmailValid =
        state.applicationForm.preferredEmail.isValid();
    final isNativeLanguageValid =
        state.applicationForm.nativeLanguage.isValid();
    final isEmergencyNameValid = state.applicationForm.emergencyName.isValid();
    final isEmergencyPhoneNumberValid =
        state.applicationForm.emergencyPhoneNumber.isValid();
    final isRelationshipPlayerValid =
        state.applicationForm.relationshipPlayer.isValid();

    if (isPlayerNameValid &&
        isDateOfBirthValid &&
        isLevelValid &&
        isParentOneNameValid &&
        isParentOnePhoneNumberValid &&
        isParentTwoNameValid &&
        isParentTwoPhoneNumberValid &&
        isHomeAddressValid &&
        isCityValid &&
        iscountryStateValid &&
        isZipCodeValid &&
        isPreferredEmailValid &&
        isNativeLanguageValid &&
        isEmergencyNameValid &&
        isEmergencyPhoneNumberValid &&
        isRelationshipPlayerValid) {
      return true;
    }
    emit(
      state.copyWith(
        showApplicationErrorMessage: AutovalidateMode.always,
      ),
    );
    return false;
  }

  Future<void> registerWithEmailAndPassword() async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    final isUserNameValid = state.userName.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();

    if (isEmailValid &&
        isPasswordValid &&
        isUserNameValid &&
        isConfirmPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        ),
      );
      failureOrSuccess = await iAuth.registerWithEmailAndPassword(
          email: state.email, password: state.password);
      await getIt<IUserRepo>()
          .createUserData(
            userData: UserData(
              userName: state.userName,
              email: state.email,
              id: UniqueId(),
              role: 'user',
              imgUrl: '',
              asp: [],
              camp: [],
              adtService: [],
            ),
          )
          .whenComplete(
            () => getIt<IUserRepo>().createApplicationForm(
              applicationForm: state.applicationForm.copyWith(
                hearAboutUs: state.applicationForm.hearAboutUs ?? '',
                aboutHealth: state.applicationForm.aboutHealth ?? '',
              ),
            ),
          );
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: AutovalidateMode.always,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }
}
