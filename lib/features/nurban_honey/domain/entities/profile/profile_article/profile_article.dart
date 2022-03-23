import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_article.freezed.dart';

@freezed
class ProfileArticle with _$ProfileArticle {
  const factory ProfileArticle(
      int articleId,
      int boardId,
      String boardName,
      String boardAddress,
      String title,
      String comments,
      String createAt) = _ProfileArticle;
}
