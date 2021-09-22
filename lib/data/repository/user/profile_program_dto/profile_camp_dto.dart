import 'package:academy_app/model/user_data/programs/profile_camp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'profile_camp_dto.freezed.dart';
part 'profile_camp_dto.g.dart';

@freezed
abstract class ProfileCampDto with _$ProfileCampDto {
  const ProfileCampDto._();
  const factory ProfileCampDto({
    required String groupName,
    required String times,
    required bool fitness,
    required String fitnessTimes,
    required bool fullDay,
    required int price,
    required bool status,
    required String date,
  }) = _ProfileCampDto;

  factory ProfileCampDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileCampDtoFromJson(json);

  factory ProfileCampDto.fromDomain(ProfileCamp profileCamp) {
    final format = DateFormat('yyyy-MM-dd hh:mm:ss');
    final date = format.format(DateTime.now());
    return ProfileCampDto(
      groupName: profileCamp.groupName,
      times: profileCamp.times,
      price: profileCamp.price,
      status: profileCamp.status,
      fitness: profileCamp.fitness,
      fitnessTimes: profileCamp.fitnessTimes,
      fullDay: profileCamp.fullDay,
      date: date,
    );
  }

  ProfileCamp toDomain() {
    return ProfileCamp(
      groupName: groupName,
      times: times,
      fitness: fitness,
      fitnessTimes: fitnessTimes,
      fullDay: fullDay,
      price: price,
      status: status,
    );
  }
}
