import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';

import '../../../domain/entities/profile_article/profile_article.dart';

part 'profile_article_model.freezed.dart';
part 'profile_article_model.g.dart';

@freezed
class ProfileArticleModel with _$ProfileArticleModel {
  factory ProfileArticleModel(
      int id,
      String? thumbnail,
      String title,
      int commentCount,
      String createdAt,
      BoardInfoModel board) = _ProfileArticleModel;

  factory ProfileArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileArticleModelFromJson(json);
}

extension GetEntity on ProfileArticleModel {
  ProfileArticle toProfileArticle() => ProfileArticle(
      id,
      board.id,
      board.name,
      board.address,
      thumbnail ?? "",
      title,
      commentCount.toString(),
      createdAt);
}

extension GetEntities on List<ProfileArticleModel> {
  List<ProfileArticle> toProfileArticles() =>
      map((e) => e.toProfileArticle()).toList();
}
