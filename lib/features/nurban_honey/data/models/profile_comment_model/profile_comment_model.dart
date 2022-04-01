import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_comment/profile_comment.dart';

import '../location_model/location_model.dart';

part 'profile_comment_model.freezed.dart';
part 'profile_comment_model.g.dart';

@freezed
class ProfileCommentModel with _$ProfileCommentModel {
  factory ProfileCommentModel(int id, String content, String createdAt,
      LocationModel Location, BoardInfoModel board) = _ProfileCommentModel;

  factory ProfileCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileCommentModelFromJson(json);
}

extension GetEntity on ProfileCommentModel {
  ProfileComment toProfileComment() => ProfileComment(
      id,
      content,
      Location.articleId,
      createdAt,
      board.id,
      board.name,
      board.address,
      Location.title);
}

extension GetEntities on List<ProfileCommentModel> {
  List<ProfileComment> toProfileComments() =>
      map((e) => e.toProfileComment()).toList();
}
