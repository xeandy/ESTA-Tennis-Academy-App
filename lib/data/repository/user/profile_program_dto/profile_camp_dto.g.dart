// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_camp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileCampDto _$_$_ProfileCampDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileCampDto(
    groupName: json['groupName'] as String,
    times: json['times'] as String,
    fitness: json['fitness'] as bool,
    fitnessTimes: json['fitnessTimes'] as String,
    fullDay: json['fullDay'] as bool,
    price: json['price'] as int,
    status: json['status'] as bool,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileCampDtoToJson(_$_ProfileCampDto instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'times': instance.times,
      'fitness': instance.fitness,
      'fitnessTimes': instance.fitnessTimes,
      'fullDay': instance.fullDay,
      'price': instance.price,
      'status': instance.status,
      'date': instance.date,
    };
