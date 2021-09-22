import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/model/comment/comment.dart';
import 'package:dartz/dartz.dart';

abstract class ICommentRepo {
  Future<Either<FirestoreFailure, Unit>> createComment(
      Comment comment, String newsId);
  Stream<Either<FirestoreFailure, List<Comment>>> getComment(String newsId);
}
