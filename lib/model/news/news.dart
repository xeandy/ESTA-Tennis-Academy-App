import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';

@freezed
class News with _$News {
  const factory News({
    required String? coachName,
    required String? imgUrl,
    required String? content,
    required String? coachImgUrl,
    required String? newsId,
  }) = _News;

  factory News.empty() => News(
        coachName: '',
        imgUrl: '',
        content: '',
        coachImgUrl: '',
        newsId: '',
      );
}
