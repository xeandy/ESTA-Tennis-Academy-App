import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/news/i_news_repository.dart';
import 'package:academy_app/data/repository/news/news_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:academy_app/model/news/news.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INewsRepo)
class NewsRepo implements INewsRepo {
  final FirebaseFirestore firebaseFirestore;

  final CollectionReference newsCollectionReference =
      FirebaseFirestore.instance.collection('news');
  NewsRepo(this.firebaseFirestore);
  @override
  Stream<Either<FirestoreFailure, List<News>>> getNews() async* {
    yield* newsCollectionReference
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, List<News>>(
            snap.docs
                .map(
                  (doc) => NewsDTO.fromJson(doc.data() as Map<String, dynamic>)
                      .toDomain(),
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

  @override
  Future<Either<FirestoreFailure, Unit>> addNews(News news) async {
    final newsId = newsCollectionReference.doc().id;
    final newsDto = NewsDTO.fromDomain(news.copyWith(newsId: newsId));
    try {
      await newsCollectionReference.doc(newsId).set(
            newsDto.toJson(),
          );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }
}
