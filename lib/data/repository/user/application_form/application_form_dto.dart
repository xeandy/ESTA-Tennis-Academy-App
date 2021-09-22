import 'package:academy_app/model/application_form/application_form.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'application_form_dto.g.dart';
part 'application_form_dto.freezed.dart';

@freezed
abstract class ApplicationFormDTO implements _$ApplicationFormDTO {
  const ApplicationFormDTO._();
  const factory ApplicationFormDTO({
    required String? playerFullName,
    required String? dateOfBirth,
    required String? level,
    required String? parentOneName,
    required String? parentOnePhoneNumber,
    required String? parentTwoName,
    required String? parentTwoPhoneNumber,
    required String? homeAddress,
    required String? city,
    required String? state,
    required String? zipCode,
    required String? preferredEmail,
    required String? nativeLanguage,
    required String? emergencyName,
    required String? emergencyPhoneNumber,
    required String? relationshipPlayer,
    required String? hearAboutUs,
    required String? aboutHealth,
    required String? createdOn,
  }) = _ApplicationFormDTO;

  factory ApplicationFormDTO.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFormDTOFromJson(json);

  factory ApplicationFormDTO.fromDomain(ApplicationForm applicationForm) {
    final format = DateFormat('dd MMMMM yyyy');
    final time = format.format(DateTime.now());
    return ApplicationFormDTO(
      playerFullName: applicationForm.playerFullName.getOrCrash(),
      dateOfBirth: applicationForm.dateOfBirth.getOrCrash(),
      level: applicationForm.level,
      parentOneName: applicationForm.parentOneName.getOrCrash(),
      parentOnePhoneNumber: applicationForm.parentOnePhoneNumber.getOrCrash(),
      parentTwoName: applicationForm.parentTwoName.getOrCrash(),
      parentTwoPhoneNumber: applicationForm.parentTwoPhoneNumber.getOrCrash(),
      homeAddress: applicationForm.homeAddress.getOrCrash(),
      city: applicationForm.city.getOrCrash(),
      state: applicationForm.countryState.getOrCrash(),
      zipCode: applicationForm.zipCode.getOrCrash(),
      preferredEmail: applicationForm.preferredEmail.getOrCrash(),
      nativeLanguage: applicationForm.nativeLanguage.getOrCrash(),
      emergencyName: applicationForm.emergencyName.getOrCrash(),
      emergencyPhoneNumber: applicationForm.emergencyPhoneNumber.getOrCrash(),
      relationshipPlayer: applicationForm.relationshipPlayer.getOrCrash(),
      hearAboutUs: applicationForm.hearAboutUs,
      aboutHealth: applicationForm.aboutHealth,
      createdOn: time,
    );
  }

  ApplicationForm toDomain() {
    return ApplicationForm(
      playerFullName: PlayerFullName(playerFullName!),
      dateOfBirth: DateOfBirth(dateOfBirth!),
      level: level!,
      parentOneName: ParentOneName(parentOneName!),
      parentOnePhoneNumber: ParentOnePhoneNumber(parentOnePhoneNumber!),
      parentTwoName: ParentTwoName(parentTwoName!),
      parentTwoPhoneNumber: ParentTwoPhoneNumber(parentTwoPhoneNumber!),
      homeAddress: HomeAddress(homeAddress!),
      city: City(city!),
      countryState: CountryState(state!),
      zipCode: ZipCode(zipCode!),
      preferredEmail: PreferredEmail(preferredEmail!),
      nativeLanguage: NativeLanguage(nativeLanguage!),
      emergencyName: EmergencyName(emergencyName!),
      emergencyPhoneNumber: EmergencyPhoneNumber(emergencyPhoneNumber!),
      relationshipPlayer: RelationshipPlayer(relationshipPlayer!),
      hearAboutUs: hearAboutUs!,
      aboutHealth: aboutHealth!,
      createdOn: createdOn!,
    );
  }
}
