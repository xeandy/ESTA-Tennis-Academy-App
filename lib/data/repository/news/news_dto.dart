import 'package:academy_app/model/news/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
abstract class NewsDTO with _$NewsDTO {
  const NewsDTO._();
  const factory NewsDTO({
    required String? coachName,
    required String? imgUrl,
    required String? content,
    required String? coachImgUrl,
    required String? newsId,
  }) = _NewsDTO;

  factory NewsDTO.fromJson(Map<String, dynamic> json) =>
      _$NewsDTOFromJson(json);

  factory NewsDTO.fromDomain(News news) {
    return NewsDTO(
      coachName: news.coachName,
      imgUrl: news.imgUrl,
      content: news.content,
      coachImgUrl: news.coachImgUrl,
      newsId: news.newsId,
    );
  }

  News toDomain() {
    return News(
      coachName: coachName,
      imgUrl: imgUrl,
      content: content,
      coachImgUrl: coachImgUrl,
      newsId: newsId,
    );
  }
}
