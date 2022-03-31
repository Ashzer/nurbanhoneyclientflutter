import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/editor_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/image_post_response/image_post_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';

import '../../../../core/network/network_status.dart';

class EditorRepositoryImpl implements EditorRepository {
  final NetworkStatus networkStatus;
  final EditorRemoteDataSource remoteDataSource;
  EditorRepositoryImpl(this.networkStatus, this.remoteDataSource);

  @override
  Future<Either<Failure, EmptyResponse>> deleteArticle(
      String address, String token, int articleId, String uuid) async {
    return const Right(EmptyResponse(""));
  }

  @override
  Future<Either<Failure, EmptyResponse>> postArticle(
      String address,
      String token,
      String title,
      String uuid,
      String? thumbnail,
      String content) async {
    return const Right(EmptyResponse(""));
  }

  @override
  Future<Either<Failure, ImagePostResponse>> postImage(
      String address, String token, String uuid, String imagePath) async {
    return Right(ImagePostResponse(Uri.parse("imageUri")));
  }

  @override
  Future<Either<Failure, EmptyResponse>> postNurbanArticle(
      String address,
      String token,
      String title,
      String uuid,
      String lossCut,
      String? thumbnail,
      String content) async {
    return const Right(EmptyResponse(""));
  }

  @override
  Future<Either<Failure, EmptyResponse>> putArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String content) async {
    return const Right(EmptyResponse(""));
  }

  @override
  Future<Either<Failure, EmptyResponse>> putNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content) async {
    return const Right(EmptyResponse(""));
  }
}
