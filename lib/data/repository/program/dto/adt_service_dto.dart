import 'package:academy_app/model/program/additional_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adt_service_dto.g.dart';
part 'adt_service_dto.freezed.dart';

@freezed
abstract class AdtServiceDto with _$AdtServiceDto {
  const AdtServiceDto._();
  const factory AdtServiceDto({
    required int? threeTimes,
    required int? fiveTimes,
    required int? tenTimes,
  }) = _AdtServiceDto;

  factory AdtServiceDto.fromJson(Map<String, dynamic> json) =>
      _$AdtServiceDtoFromJson(json);

  factory AdtServiceDto.fromDomain(AdtService adtService) {
    return AdtServiceDto(
      threeTimes: adtService.price3,
      fiveTimes: adtService.price5,
      tenTimes: adtService.price10,
    );
  }

  AdtService toDomain() => AdtService(
        price3: threeTimes,
        price5: fiveTimes,
        price10: tenTimes,
      );
}
