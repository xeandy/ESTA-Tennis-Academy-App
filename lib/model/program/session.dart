import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String? times,
    required int? price,
  }) = _Session;

  factory Session.empty() => Session(
        times: '',
        price: 0,
      );
}
