import 'package:academy_app/data/repository/comment/comment_dto.dart';
import 'package:academy_app/data/repository/comment/i_comment_repository.dart';
import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/model/comment/comment.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICommentRepo)
class CommentRepo implements ICommentRepo {
  final FirebaseFirestore firebaseFirestore;

  CollectionReference commentCollectionReference =
      FirebaseFirestore.instance.collection('news');
  CommentRepo(this.firebaseFirestore);
  @override
  Future<Either<FirestoreFailure, Unit>> createComment(
      Comment comment, String newsId) async {
    final commentId = commentCollectionReference.doc().id;
    final commentDto =
        CommentDTO.fromDomain(comment.copyWith(commentId: commentId));
    try {
      await commentCollectionReference
          .doc(newsId)
          .collection('comments')
          .doc(commentId)
          .set(commentDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirestoreFailure, List<Comment>>> getComment(
      String newsId) async* {
    yield* commentCollectionReference
        .doc(newsId)
        .collection('comments')
        .orderBy('time')
        .snapshots()
        .map(
          (qsnap) => right<FirestoreFailure, List<Comment>>(
            qsnap.docs
                .map(
                  (doc) => CommentDTO.fromJson(doc.data()).toDomain(),
                )
                .toList(),
          ),
        )
        .handleError(
      (e) {
        if (e! is FirebaseException &&
            e.message.contains('permission-denied')) {
          return left(FirestoreFailure.insufficientPermission());
        } else {
          return left(FirestoreFailure.unexpected());
        }
      },
    );
  }
}
