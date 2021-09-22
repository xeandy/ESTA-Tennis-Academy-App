import 'package:academy_app/model/user_data/programs/profile_adtService.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'profile_adtService_dto.freezed.dart';
part 'profile_adtService_dto.g.dart';

@freezed
abstract class ProfileAdtServiceDto with _$ProfileAdtServiceDto {
  const ProfileAdtServiceDto._();

  const factory ProfileAdtServiceDto({
    required String ptlTimes,
    required String pflTimes,
    required int price,
    required bool status,
    required String date,
  }) = _ProfileAdtServiceDto;

  factory ProfileAdtServiceDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileAdtServiceDtoFromJson(json);

  factory ProfileAdtServiceDto.fromDomain(ProfileAdtService profileAdtService) {
    final format = DateFormat('yyyy-MM-dd hh:mm:ss');
    final date = format.format(DateTime.now());
    return ProfileAdtServiceDto(
      ptlTimes: profileAdtService.ptlTimes,
      pflTimes: profileAdtService.pflTimes,
      price: profileAdtService.price,
      status: profileAdtService.status,
      date: date,
    );
  }

  ProfileAdtService toDomain() {
    return ProfileAdtService(
      ptlTimes: ptlTimes,
      pflTimes: pflTimes,
      price: price,
      status: status,
    );
  }
}
