import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_service.freezed.dart';

@freezed
class AdtService with _$AdtService {
  const factory AdtService({
    required int? price3,
    required int? price5,
    required int? price10,
  }) = _AdtService;

  factory AdtService.empty() => AdtService(
        price3: 0,
        price5: 0,
        price10: 0,
      );
}
