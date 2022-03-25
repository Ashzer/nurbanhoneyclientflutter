import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/article_detail/article_detail.dart';

part 'article_detail_model.freezed.dart';
part 'article_detail_model.g.dart';

@freezed
class ArticleDetailModel with _$ArticleDetailModel {
  factory ArticleDetailModel(
      int id,
      String uuid,
      String? thumbnail,
      String title,
      int lossCut,
      String content,
      int count,
      int commentCount,
      int likeCount,
      int dislikeCount,
      String updatedAt,
      int userId,
      String badge,
      String nickname,
      List<String>? insignia,
      String? myRating) = _ArticleDetailModel;

  factory ArticleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailModelFromJson(json);
}

extension GetEntity on ArticleDetailModel {
  ArticleDetail toArticleDetail() => ArticleDetail(
      id,
      uuid,
      thumbnail ?? "",
      title,
      lossCut.toString(),
      content,
      count.toString(),
      commentCount.toString(),
      likeCount.toString(),
      dislikeCount.toString(),
      updatedAt,
      userId,
      badge,
      nickname,
      insignia ?? [],
      myRating ?? "");
}
