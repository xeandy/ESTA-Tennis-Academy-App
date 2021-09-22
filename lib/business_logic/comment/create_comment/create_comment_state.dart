part of 'create_comment_cubit.dart';

@freezed
abstract class CreateCommentState with _$CreateCommentState {
  const factory CreateCommentState({
    required Comment comment,
  }) = _CreateCommentState;

  factory CreateCommentState.initial() => CreateCommentState(
        comment: Comment.empty(),
      );
}
