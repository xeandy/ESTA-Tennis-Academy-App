import 'package:academy_app/model/program/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'program.freezed.dart';

@freezed
class Program with _$Program {
  const factory Program({
    required String? programName,
    required List<Session> session,
  }) = _Program;

  factory Program.empty() => Program(
        programName: '',
        session: [],
      );
}
