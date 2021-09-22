import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/model/news/news.dart';
import 'package:dartz/dartz.dart';

abstract class INewsRepo {
  Stream<Either<FirestoreFailure, List<News>>> getNews();

  Future<Either<FirestoreFailure, Unit>> addNews(News news);
}
