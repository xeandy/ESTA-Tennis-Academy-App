import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_asp.freezed.dart';

@freezed
class ProfileAsp with _$ProfileAsp {
  const factory ProfileAsp({
    required String programName,
    required String times,
    required int price,
    required bool status,
    required String id,
  }) = _ProfileAsp;

  factory ProfileAsp.empty() => ProfileAsp(
        programName: '',
        times: '',
        price: 0,
        status: false,
        id: ''
      );
}
