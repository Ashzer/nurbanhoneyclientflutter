import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_ratings.freezed.dart';

@freezed
class ArticleRatings with _$ArticleRatings {
  factory ArticleRatings(
      int id, String likes, String dislikes, String myRating) = _ArticleRatings;
}
