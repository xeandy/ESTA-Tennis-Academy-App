import 'package:freezed_annotation/freezed_annotation.dart';
part 'full_day.freezed.dart';

@freezed
class FullDay with _$FullDay {
  const factory FullDay({
    required String? name,
    required int? price,
  }) = _FullDay;

  factory FullDay.empty() => FullDay(
        name: '',
        price: 0,
      );
}
