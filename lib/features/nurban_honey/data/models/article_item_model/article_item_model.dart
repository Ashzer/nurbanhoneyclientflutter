import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board/article_item/article_item.dart';

part 'article_item_model.freezed.dart';
part 'article_item_model.g.dart';

@freezed
class ArticleItemModel with _$ArticleItemModel {
  factory ArticleItemModel(int id, String thumbnail, String title,
      int commentCount, UserInfo User) = _ArticleItemModel;

  factory ArticleItemModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleItemModelFromJson(json);

  factory ArticleItemModel.fromArticleItem(ArticleItem item) =>
      ArticleItemModel(
          item.articleId,
          item.thumbnail,
          item.title,
          int.parse(item.replies),
          UserInfo(item.userId, item.badges, item.nickname, item.insignias));
}

extension GetEntity on ArticleItemModel {
  ArticleItem toArticleItem() => ArticleItem(
      id,
      thumbnail,
      title,
      commentCount.toString(),
      User.userId,
      User.badge,
      User.nickname,
      User.insignia);
}

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo(
          int userId, String badge, String nickname, List<String> insignia) =
      _UserInfo;
  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
