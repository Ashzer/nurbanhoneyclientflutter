import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/profile_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_article_model/profile_article_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_comment_model/profile_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_model/profile_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_comment/profile_comment.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_article/profile_article.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile/profile.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final NetworkStatus networkStatus;
  final ProfileRemoteDataSource remoteDataSource;
  ProfileRepositoryImpl(this.networkStatus, this.remoteDataSource);

  @override
  Future<Either<Failure, Profile>> getProfile(String token) async {
    if (await networkStatus.isConnected) {
      try {
        final profile = (await remoteDataSource.getProfile(token)).toProfile();
        return Right(profile);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProfileArticle>>> getProfileArticles(
      String token, int offset, int limit) async {
    if (await networkStatus.isConnected) {
      try {
        final profileArticles =
            (await remoteDataSource.getProfileArticles(token, offset, limit))
                .toProfileArticles();
        return Right(profileArticles);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProfileComment>>> getProfileComments(
      String token, int offset, int limit) async {
    if (await networkStatus.isConnected) {
      try {
        final profileComments =
            (await remoteDataSource.getProfileComments(token, offset, limit))
                .toProfileComments();
        return Right(profileComments);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> requestSignOut(
      String token, int userId) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await remoteDataSource.requestSignOut(token, userId))
            .toEmptyResponse();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> editProfile(String token,
      String nickname, String description, List<String> insignias) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await remoteDataSource.editProfile(
                token, nickname, description, insignias))
            .toEmptyResponse();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
