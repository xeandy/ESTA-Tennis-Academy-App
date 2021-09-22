import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:academy_app/model/domain/core/value_objects.dart';
import 'package:academy_app/model/user_data/programs/profile_adtService.dart';
import 'package:academy_app/model/user_data/programs/profile_asp.dart';
import 'package:academy_app/model/user_data/programs/profile_camp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required UserName? userName,
    required Email email,
    required UniqueId id,
    required String role,
    required String? imgUrl,
    required List<ProfileAsp> asp,
    required List<ProfileCamp> camp,
    required List<ProfileAdtService> adtService,
  }) = _UserData;

  factory UserData.empty() => UserData(
        userName: UserName(''),
        email: Email(''),
        id: UniqueId(),
        role: '',
        imgUrl: '',
        asp: [],
        camp: [],
        adtService: [],
      );
}
