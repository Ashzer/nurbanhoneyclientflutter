import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_comment.freezed.dart';

@freezed
class ArticleComment with _$ArticleComment {
  factory ArticleComment(
      int commentId,
      String comment,
      int articleId,
      int userId,
      String badge,
      String nickname,
      List<String> insignias) = _ArticleComment;
}
