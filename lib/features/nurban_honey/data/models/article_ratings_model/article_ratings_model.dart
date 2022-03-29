import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/article_ratings/article_ratings.dart';

part 'article_ratings_model.freezed.dart';
part 'article_ratings_model.g.dart';

@freezed
class ArticleRatingsModel with _$ArticleRatingsModel {
  factory ArticleRatingsModel(
          int id, int likeCount, int dislikeCount, String? myRating) =
      _ArticleRatingsModel;

  factory ArticleRatingsModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleRatingsModelFromJson(json);
}

extension GetEntity on ArticleRatingsModel {
  ArticleRatings toArticleRatings() => ArticleRatings(
      id, likeCount.toString(), dislikeCount.toString(), myRating ?? "");
}
