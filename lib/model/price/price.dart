import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.freezed.dart';

@freezed
class Price with _$Price {
  const factory Price({
    required int? lvl1OneTime,
    required int? lvl1TwoTimes,
    required int? lvl1ThreeTimes,
    required int? lvl2TwoTimes,
    required int? lvl2ThreeTimes,
    required int? lvl2fourTimes,
    // required String? lvl1OneTimes,
    // required String? lvl1OneTimes,
    // required String? lvl1OneTimes,
    // required String? lvl1OneTimes,
  }) = _Price;
}
