import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_item.freezed.dart';

@freezed
class ArticleItem with _$ArticleItem {
  factory ArticleItem(
    int articleId,
    String thumbnail,
    String title,
    String replies,
    int userId,
    String badges,
    String nickname,
    List<String> insignias,
  ) = _ArticleItem;
}
