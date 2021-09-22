import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_adtService.freezed.dart';

@freezed
class ProfileAdtService with _$ProfileAdtService {
  const factory ProfileAdtService({
    required String ptlTimes,
    required String pflTimes,
    required int price,
    required bool status,
  }) = _ProfileAdtService;

  factory ProfileAdtService.empty() => ProfileAdtService(
        ptlTimes: '',
        pflTimes: '',
        price: 0,
        status: false,
      );
}
