import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_camp.freezed.dart';

@freezed
class ProfileCamp with _$ProfileCamp {
  const factory ProfileCamp({
    required String groupName,
    required String times,
    required bool fitness,
    required String fitnessTimes,
    required bool fullDay,
    required int price,
    required bool status,
    // required String date,
  }) = _ProfileCamp;

  factory ProfileCamp.empty() => ProfileCamp(
        groupName: '',
        times: '',
        fitness: false,
        fitnessTimes: '',
        fullDay: false,
        price: 0,
        status: false,
        // date: '',
      );
}
