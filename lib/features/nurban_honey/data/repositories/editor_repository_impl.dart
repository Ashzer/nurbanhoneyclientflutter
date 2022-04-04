import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/editor_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/image_post_response_model/image_post_response_model.dart';
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
  Future<Either<Failure, EmptyResponse>> postNurbanArticle(
      String address,
      String token,
      String title,
      String uuid,
      String lossCut,
      String? thumbnail,
      String content) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await remoteDataSource.postNurbanArticle(
                address, token, title, uuid, lossCut, thumbnail, content))
            .toEmptyResponse();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      } on AuthorizationException {
        return Left(AuthorizationFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> postArticle(
      String address,
      String token,
      String title,
      String uuid,
      String? thumbnail,
      String content) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await remoteDataSource.postArticle(
                address, token, title, uuid, thumbnail, content))
            .toEmptyResponse();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      } on AuthorizationException {
        return Left(AuthorizationFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> patchNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await remoteDataSource.patchNurbanArticle(
                address, token, articleId, thumbnail, title, lossCut, content))
            .toEmptyResponse();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      } on AuthorizationException {
        return Left(AuthorizationFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> patchArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String content) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await remoteDataSource.patchArticle(
                address, token, articleId, thumbnail, title, content))
            .toEmptyResponse();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      } on AuthorizationException {
        return Left(AuthorizationFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> deleteArticle(
      String address, String token, int articleId, String uuid) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await remoteDataSource.deleteArticle(
                address, token, articleId, uuid))
            .toEmptyResponse();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      } on AuthorizationException {
        return Left(AuthorizationFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, ImagePostResponse>> postImage(
      String address, String token, String uuid, String imagePath) async {
    if (await networkStatus.isConnected) {
      try {
        final imageResponse =
            (await remoteDataSource.postImage(address, token, uuid, imagePath))
                .toImagePostResponse();
        return Right(imageResponse);
      } on ServerException {
        return Left(ServerFailure());
      } on AuthorizationException {
        return Left(AuthorizationFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
