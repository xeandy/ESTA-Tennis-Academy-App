// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_adtService_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileAdtServiceDto _$_$_ProfileAdtServiceDtoFromJson(
    Map<String, dynamic> json) {
  return _$_ProfileAdtServiceDto(
    ptlTimes: json['ptlTimes'] as String,
    pflTimes: json['pflTimes'] as String,
    price: json['price'] as int,
    status: json['status'] as bool,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileAdtServiceDtoToJson(
        _$_ProfileAdtServiceDto instance) =>
    <String, dynamic>{
      'ptlTimes': instance.ptlTimes,
      'pflTimes': instance.pflTimes,
      'price': instance.price,
      'status': instance.status,
      'date': instance.date,
    };
