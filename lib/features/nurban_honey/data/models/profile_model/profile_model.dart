import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile/profile.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel(
      int id,
      String loginType,
      String badge,
      String nickname,
      String description,
      int point,
      List<String>? insigniaShow,
      List<String>? insigniaOwn,
      int myArticleCount,
      int myCommentCount) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

extension GetEntity on ProfileModel {
  Profile toProfile() => Profile(
      id,
      loginType,
      badge,
      nickname,
      description,
      point.toString(),
      insigniaShow ?? [],
      insigniaOwn ?? [],
      myArticleCount.toString(),
      myCommentCount.toString());
}
