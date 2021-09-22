// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_asp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileAspDto _$_$_ProfileAspDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileAspDto(
    programName: json['programName'] as String,
    times: json['times'] as String,
    price: json['price'] as int,
    status: json['status'] as bool,
    date: json['date'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileAspDtoToJson(_$_ProfileAspDto instance) =>
    <String, dynamic>{
      'programName': instance.programName,
      'times': instance.times,
      'price': instance.price,
      'status': instance.status,
      'date': instance.date,
      'id': instance.id,
    };
