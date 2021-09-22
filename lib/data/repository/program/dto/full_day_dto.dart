import 'package:academy_app/model/program/full_day.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_day_dto.g.dart';
part 'full_day_dto.freezed.dart';

@freezed
abstract class FullDayDto with _$FullDayDto {
  const FullDayDto._();
  const factory FullDayDto({
    required String? groupName,
    required int? price,
  }) = _FullDayDto;

  factory FullDayDto.fromJson(Map<String, dynamic> json) =>
      _$FullDayDtoFromJson(json);

  factory FullDayDto.fromDomain(FullDay fullDay) {
    return FullDayDto(
      groupName: fullDay.name,
      price: fullDay.price,
    );
  }

  FullDay toDomain() => FullDay(
        name: groupName,
        price: price,
      );
}
