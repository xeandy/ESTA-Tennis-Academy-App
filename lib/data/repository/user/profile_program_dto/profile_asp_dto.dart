import 'package:academy_app/model/user_data/programs/profile_asp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'profile_asp_dto.freezed.dart';
part 'profile_asp_dto.g.dart';

@freezed
abstract class ProfileAspDto with _$ProfileAspDto {
  const ProfileAspDto._();
  const factory ProfileAspDto({
    required String programName,
    required String times,
    required int price,
    required bool status,
    required String date,
    required String id,
  }) = _ProfileAspDto;

  factory ProfileAspDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileAspDtoFromJson(json);

  factory ProfileAspDto.fromDomain(ProfileAsp profileAsp) {
    final format = DateFormat('yyyy-MM-dd hh:mm:ss');
    final date = format.format(DateTime.now());
    return ProfileAspDto(
      programName: profileAsp.programName,
      times: profileAsp.times,
      price: profileAsp.price,
      status: profileAsp.status,
      date: date,
      id: profileAsp.id,
    );
  }

  ProfileAsp toDomain() {
    return ProfileAsp(
      programName: programName,
      times: times,
      price: price,
      status: status,
      id: id,
    );
  }
}
