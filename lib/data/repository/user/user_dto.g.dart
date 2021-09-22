// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataDTO _$_$_UserDataDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDataDTO(
    userName: json['userName'] as String?,
    email: json['email'] as String?,
    userId: json['userId'] as String?,
    role: json['role'] as String,
    imgUrl: json['imgUrl'] as String?,
    asp: (json['asp'] as List<dynamic>)
        .map((e) => ProfileAspDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    camp: (json['camp'] as List<dynamic>)
        .map((e) => ProfileCampDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    adtservice: (json['adtservice'] as List<dynamic>)
        .map((e) => ProfileAdtServiceDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_UserDataDTOToJson(_$_UserDataDTO instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'userId': instance.userId,
      'role': instance.role,
      'imgUrl': instance.imgUrl,
      'asp': instance.asp,
      'camp': instance.camp,
      'adtservice': instance.adtservice,
    };
