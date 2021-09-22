import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_form.freezed.dart';

@freezed
class ApplicationForm with _$ApplicationForm {
  const factory ApplicationForm({
    required PlayerFullName playerFullName,
    required DateOfBirth dateOfBirth,
    required String level,
    required ParentOneName parentOneName,
    required ParentOnePhoneNumber parentOnePhoneNumber,
    required ParentTwoName parentTwoName,
    required ParentTwoPhoneNumber parentTwoPhoneNumber,
    required HomeAddress homeAddress,
    required City city,
    required CountryState countryState,
    required ZipCode zipCode,
    required PreferredEmail preferredEmail,
    required NativeLanguage nativeLanguage,
    required EmergencyName emergencyName,
    required EmergencyPhoneNumber emergencyPhoneNumber,
    required RelationshipPlayer relationshipPlayer,
    required String? hearAboutUs,
    required String? aboutHealth,
    required String createdOn,
  }) = _ApplicationForm;

  factory ApplicationForm.empty() => ApplicationForm(
        playerFullName: PlayerFullName(''),
        dateOfBirth: DateOfBirth(''),
        level: '',
        parentOneName: ParentOneName(''),
        parentOnePhoneNumber: ParentOnePhoneNumber(''),
        parentTwoName: ParentTwoName(''),
        parentTwoPhoneNumber: ParentTwoPhoneNumber(''),
        homeAddress: HomeAddress(''),
        city: City(''),
        countryState: CountryState(''),
        zipCode: ZipCode(''),
        preferredEmail: PreferredEmail(''),
        nativeLanguage: NativeLanguage(''),
        emergencyName: EmergencyName(''),
        emergencyPhoneNumber: EmergencyPhoneNumber(''),
        relationshipPlayer: RelationshipPlayer(''),
        hearAboutUs: '',
        aboutHealth: '',
        createdOn: '',
      );
}
