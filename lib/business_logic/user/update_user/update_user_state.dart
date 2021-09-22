part of 'update_user_cubit.dart';

@freezed
abstract class UpdateUserState with _$UpdateUserState {
  const factory UpdateUserState({
    required XFile img,
    required String? imgUrl,
    required UserName userName,
    required PhoneNumber phoneNumber,
    required AutovalidateMode showErrorMessage,
    required bool isChanged,
    required bool isUpload,
    required bool isComplete,
    required ParentOnePhoneNumber parentOnePhoneNumber,
    required ParentTwoPhoneNumber parentTwoPhoneNumber,
    required HomeAddress homeAddress,
    required PreferredEmail preferredEmail,
    required EmergencyName emergencyName,
    required EmergencyPhoneNumber emergencyPhoneNumber,
  }) = _UpdateUserState;

  factory UpdateUserState.initial() => UpdateUserState(
        img: XFile(''),
        imgUrl: '',
        userName: UserName(''),
        phoneNumber: PhoneNumber(''),
        showErrorMessage: AutovalidateMode.disabled,
        isChanged: false,
        isComplete: false,
        isUpload: false,
        parentOnePhoneNumber: ParentOnePhoneNumber(''),
        parentTwoPhoneNumber: ParentTwoPhoneNumber(''),
        homeAddress: HomeAddress(''),
        preferredEmail: PreferredEmail(''),
        emergencyName: EmergencyName(''),
        emergencyPhoneNumber: EmergencyPhoneNumber(''),
      );
}
