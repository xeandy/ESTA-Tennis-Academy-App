import 'dart:async';

import 'package:academy_app/data/repository/comment/i_comment_repository.dart';
import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/model/comment/comment.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'comment_watcher_state.dart';
part 'comment_watcher_cubit.freezed.dart';

@injectable
class CommentWatcherCubit extends Cubit<CommentWatcherState> {
  final ICommentRepo iCommentRepo;
  CommentWatcherCubit(this.iCommentRepo) : super(CommentWatcherState.initial());

  StreamSubscription? streamSubscription;

  Future<void> getComments(String newsId) async {
    streamSubscription = iCommentRepo.getComment(newsId).listen(
      (failureOrSuccess) {
        emit(
          failureOrSuccess.fold(
            (failure) => CommentWatcherState.loadFailure(failure),
            (comments) => CommentWatcherState.loadSuccess(comments),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
