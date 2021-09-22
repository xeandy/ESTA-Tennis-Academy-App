import 'package:academy_app/model/program/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_dto.freezed.dart';
part 'session_dto.g.dart';

@freezed
abstract class SessionDTO with _$SessionDTO {
  const SessionDTO._();
  const factory SessionDTO({
    required String? times,
    required int? price,
  }) = _SessionDTO;

  factory SessionDTO.fromJson(Map<String, dynamic> json) =>
      _$SessionDTOFromJson(json);

  factory SessionDTO.fromDomain(Session session) {
    return SessionDTO(
      times: session.times,
      price: session.price,
    );
  }

  Session toDomain() => Session(
        times: times,
        price: price,
      );
}
