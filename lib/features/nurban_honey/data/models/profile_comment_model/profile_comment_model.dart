import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_comment/profile_comment.dart';

part 'profile_comment_model.freezed.dart';
part 'profile_comment_model.g.dart';

@freezed
class ProfileCommentModel with _$ProfileCommentModel {
  factory ProfileCommentModel() = _ProfileCommentModel;

  factory ProfileCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileCommentModelFromJson(json);
}

extension GetEntity on ProfileCommentModel {
  ProfileComment toProfileComment() => throw UnimplementedError();
}
//TODO : implement test after server fixed