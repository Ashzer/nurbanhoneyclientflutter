import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/image_post_response/image_post_response.dart';

abstract class EditorRepository {
  Future<Either<Failure, EmptyResponse>> postNurbanArticle(
      String address,
      String token,
      String title,
      String uuid,
      String lossCut,
      String? thumbnail,
      String content);

  Future<Either<Failure, EmptyResponse>> postArticle(
      String address,
      String token,
      String title,
      String uuid,
      String? thumbnail,
      String content);

  Future<Either<Failure, EmptyResponse>> patchNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content);

  Future<Either<Failure, EmptyResponse>> patchArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String content);

  Future<Either<Failure, EmptyResponse>> deleteArticle(
      String address, String token, int articleId, String uuid);

  Future<Either<Failure, ImagePostResponse>> postImage(
      String address, String token, String uuid, String imagePath);

  Future<Either<Failure, EmptyResponse>> deleteImages(
      String address, String token, String uuid);
}
