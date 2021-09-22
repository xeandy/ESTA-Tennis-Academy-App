// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProgramDTO _$_$_ProgramDTOFromJson(Map<String, dynamic> json) {
  return _$_ProgramDTO(
    groupName: json['groupName'] as String?,
    session: (json['session'] as List<dynamic>?)
        ?.map((e) => SessionDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ProgramDTOToJson(_$_ProgramDTO instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'session': instance.session,
    };
