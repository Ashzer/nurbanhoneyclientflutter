import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile/profile.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_article/profile_article.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_comment/profile_comment.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Profile>> getProfile({String token});

  Future<Either<Failure, List<ProfileArticle>>> getProfileArticles(
      {String token, int offset, int limit});

  Future<Either<Failure, List<ProfileComment>>> getProfileComments(
      {String token, int offset, int limit});

  Future<Either<Failure, EmptyResponse>> requestSignOut(
      {String token, int userId});

  Future<Either<Failure, EmptyResponse>> editProfile(
      {String token,
      String nickname,
      String description,
      List<String> insignias});
}
