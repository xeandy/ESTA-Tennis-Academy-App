import 'package:academy_app/model/comment/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';

@freezed
abstract class CommentDTO with _$CommentDTO {
  const CommentDTO._();
  const factory CommentDTO({
    required String? comment,
    required String? userName,
    required String? commentId,
    required String? userImgUrl,
    required String? time,
  }) = _CommentDTO;

  factory CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentDTOFromJson(json);

  factory CommentDTO.fromDomain(Comment comment) {
    final format = DateFormat('yyyy-MM-dd hh:mm:ss');
    final time = format.format(DateTime.now());
    return CommentDTO(
      comment: comment.comment,
      userName: comment.userName,
      commentId: comment.commentId,
      userImgUrl: comment.userImgUrl,
      time: time,
    );
  }

  Comment toDomain() {
    return Comment(
      comment: comment,
      userName: userName,
      commentId: commentId,
      userImgUrl: userImgUrl,
    );
  }
}
