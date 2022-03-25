import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  factory Profile(
      int id,
      String loginType,
      String badge,
      String nickname,
      String description,
      String point,
      List<String> insigniaShow,
      List<String> insigniaOwn,
      String myArticles,
      String myComments) = _Profile;
}
