// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsDTO _$_$_NewsDTOFromJson(Map<String, dynamic> json) {
  return _$_NewsDTO(
    coachName: json['coachName'] as String?,
    imgUrl: json['imgUrl'] as String?,
    content: json['content'] as String?,
    coachImgUrl: json['coachImgUrl'] as String?,
    newsId: json['newsId'] as String?,
  );
}

Map<String, dynamic> _$_$_NewsDTOToJson(_$_NewsDTO instance) =>
    <String, dynamic>{
      'coachName': instance.coachName,
      'imgUrl': instance.imgUrl,
      'content': instance.content,
      'coachImgUrl': instance.coachImgUrl,
      'newsId': instance.newsId,
    };
