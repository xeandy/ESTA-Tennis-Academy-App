import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String? comment,
    required String? userName,
    required String? commentId,
    required String? userImgUrl,
  }) = _Comment;

  factory Comment.empty() => Comment(
        comment: '',
        userName: '',
        commentId: '',
        userImgUrl: '',
      );
}
