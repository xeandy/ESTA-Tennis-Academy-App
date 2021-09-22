import 'package:academy_app/data/repository/program/dto/session_dto.dart';
import 'package:academy_app/model/program/program.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_dto.freezed.dart';
part 'program_dto.g.dart';

@freezed
abstract class ProgramDTO with _$ProgramDTO {
  const ProgramDTO._();
  const factory ProgramDTO({
    required String? groupName,
    required List<SessionDTO>? session,
  }) = _ProgramDTO;

  factory ProgramDTO.fromJson(Map<String, dynamic> json) =>
      _$ProgramDTOFromJson(json);

  factory ProgramDTO.fromDomain(Program program) {
    return ProgramDTO(
      groupName: program.programName,
      session: program.session
          .map(
            (session) => SessionDTO.fromDomain(session),
          )
          .toList(),
    );
  }

  Program toDomain() {
    return Program(
      programName: groupName,
      session: session!
          .map(
            (e) => e.toDomain(),
          )
          .toList(),
    );
  }
}
