import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/user_info.dart';

import '../../../domain/entities/article_comment/article_comment.dart';

part 'article_comment_model.freezed.dart';
part 'article_comment_model.g.dart';

@freezed
class ArticleCommentModel with _$ArticleCommentModel {
  factory ArticleCommentModel(
          int id, String content, int articleId, UserInfo User) =
      _ArticleCommentModel;

  factory ArticleCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleCommentModelFromJson(json);

  factory ArticleCommentModel.fromArticleComment(ArticleComment entity) =>
      ArticleCommentModel(
          entity.commentId,
          entity.comment,
          entity.articleId,
          UserInfo(
              entity.userId, entity.badge, entity.nickname, entity.insignias));
}

extension GetEntity on ArticleCommentModel {
  ArticleComment toArticleComment() => ArticleComment(id, content, articleId,
      User.userId, User.badge, User.nickname, User.insignia ?? []);
}
