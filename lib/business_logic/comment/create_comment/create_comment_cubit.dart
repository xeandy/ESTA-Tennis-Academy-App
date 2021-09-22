import 'package:academy_app/data/repository/comment/i_comment_repository.dart';
import 'package:academy_app/model/comment/comment.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_comment_state.dart';
part 'create_comment_cubit.freezed.dart';

@injectable
class CreateCommentCubit extends Cubit<CreateCommentState> {
  final ICommentRepo iCommentRepo;
  CreateCommentCubit(this.iCommentRepo) : super(CreateCommentState.initial());
  void commentChanges(String comment) {
    emit(
      state.copyWith(
        comment: state.comment.copyWith(comment: comment),
      ),
    );
  }

  Future<void> createComment(
      String newsId, String userImgUrl, String userName) async {
    await iCommentRepo.createComment(
      state.comment.copyWith(
        userImgUrl: userImgUrl,
        userName: userName,
      ),
      newsId,
    );
  }
}
