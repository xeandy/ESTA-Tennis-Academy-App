import 'package:academy_app/data/repository/user/profile_program_dto/profile_adtService_dto.dart';
import 'package:academy_app/data/repository/user/profile_program_dto/profile_asp_dto.dart';
import 'package:academy_app/data/repository/user/profile_program_dto/profile_camp_dto.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:academy_app/model/domain/core/value_objects.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';
part 'user_dto.freezed.dart';

@freezed
abstract class UserDataDTO implements _$UserDataDTO {
  const UserDataDTO._();
  const factory UserDataDTO({
    required String? userName,
    required String? email,
    required String? userId,
    @JsonKey(ignore: false) required String role,
    required String? imgUrl,
    required List<ProfileAspDto> asp,
    required List<ProfileCampDto> camp,
    required List<ProfileAdtServiceDto> adtservice,
  }) = _UserDataDTO;

  factory UserDataDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDataDTOFromJson(json);

  factory UserDataDTO.fromDomain(UserData userData) {
    return UserDataDTO(
      userName: userData.userName!.getOrCrash(),
      email: userData.email.getOrCrash(),
      userId: userData.id.getOrCrash(),
      role: userData.role,
      imgUrl: userData.imgUrl!,
      asp: userData.asp
          .map(
            (profileAsp) => ProfileAspDto.fromDomain(profileAsp),
          )
          .toList(),
      camp: userData.camp
          .map(
            (campProgram) => ProfileCampDto.fromDomain(campProgram),
          )
          .toList(),
      adtservice: userData.adtService
          .map(
            (adtService) => ProfileAdtServiceDto.fromDomain(adtService),
          )
          .toList(),
    );
  }

  UserData toDomain() {
    return UserData(
      userName: UserName(userName!),
      email: Email(email!),
      id: UniqueId.fromUniqueString(userId!),
      role: role,
      imgUrl: imgUrl,
      asp: asp
          .map(
            (profileAspDto) => profileAspDto.toDomain(),
          )
          .toList(),
      camp: camp
          .map(
            (campProgramDto) => campProgramDto.toDomain(),
          )
          .toList(),
      adtService: adtservice
          .map(
            (adtServiceDto) => adtServiceDto.toDomain(),
          )
          .toList(),
    );
  }
}
