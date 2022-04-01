import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_article_model/profile_article_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_comment_model/profile_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_model/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfile(String token);

  Future<List<ProfileArticleModel>> getProfileArticles(
      String token, int offset, int limit);

  Future<List<ProfileCommentModel>> getProfileComments(
      String token, int offset, int limit);

  Future<EmptyResponseModel> requestSignOut(String token, int userId);

  Future<EmptyResponseModel> editProfile(String token, String nickname,
      String description, List<String> insignias);
}
