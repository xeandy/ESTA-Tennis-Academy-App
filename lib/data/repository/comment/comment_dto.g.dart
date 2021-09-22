// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDTO _$_$_CommentDTOFromJson(Map<String, dynamic> json) {
  return _$_CommentDTO(
    comment: json['comment'] as String?,
    userName: json['userName'] as String?,
    commentId: json['commentId'] as String?,
    userImgUrl: json['userImgUrl'] as String?,
    time: json['time'] as String?,
  );
}

Map<String, dynamic> _$_$_CommentDTOToJson(_$_CommentDTO instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'userName': instance.userName,
      'commentId': instance.commentId,
      'userImgUrl': instance.userImgUrl,
      'time': instance.time,
    };
