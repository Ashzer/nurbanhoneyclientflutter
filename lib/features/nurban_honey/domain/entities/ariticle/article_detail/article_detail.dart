import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_detail.freezed.dart';

@freezed
class ArticleDetail with _$ArticleDetail {
  factory ArticleDetail(
      int articleId,
      String uuid,
      String thumbnail,
      String title,
      String? lossCut,
      String content,
      String inquires,
      String comments,
      String likes,
      String dislikes,
      String date,
      int userId,
      String badge,
      String nickname,
      List<String> insignias,
      String myRating) = _ArticleDetail;
}
