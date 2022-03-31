import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/article_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_comment_model/article_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_detail_model/article_detail_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model/article_item_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_ratings_model/article_ratings_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_ratings/article_ratings.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_item/article_item.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_detail/article_detail.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';

import '../../../../core/network/network_status.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NetworkStatus networkStatus;
  final ArticleRemoteDataSource articleRemoteDataSource;
  ArticleRepositoryImpl(
      {required this.networkStatus, required this.articleRemoteDataSource});

  @override
  Future<Either<Failure, List<ArticleItem>>> getArticles(
      String address, int flag, int offset, int limit) async {
    if (await networkStatus.isConnected) {
      try {
        final articles = (await articleRemoteDataSource.getArticles(
                address, flag, offset, limit))
            .toArticleItems();
        return Right(articles);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, ArticleDetail>> getArticle(
      String address, String token, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final articleDetail = (await articleRemoteDataSource.getArticle(
                address, token, articleId))
            .toArticleDetail();
        return Right(articleDetail);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> postLike(
      String address, String token, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final result =
            (await articleRemoteDataSource.postLike(address, token, articleId))
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
  Future<Either<Failure, EmptyResponse>> deleteLike(
      String address, String token, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await articleRemoteDataSource.deleteLike(
                address, token, articleId))
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
  Future<Either<Failure, EmptyResponse>> postDislike(
      String address, String token, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await articleRemoteDataSource.postDislike(
                address, token, articleId))
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
  Future<Either<Failure, EmptyResponse>> deleteDislike(
      String address, String token, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await articleRemoteDataSource.deleteDislike(
                address, token, articleId))
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
  Future<Either<Failure, ArticleRatings>> getArticleRatings(
      String address, String token, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final articleRatings = (await articleRemoteDataSource.getArticleRatings(
                address, token, articleId))
            .toArticleRatings();
        return Right(articleRatings);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, ArticleComment>> getComment(
      String address, int commentId) async {
    if (await networkStatus.isConnected) {
      try {
        final articleCommentModels =
            (await articleRemoteDataSource.getComment(address, commentId));
        return Right(articleCommentModels.toArticleComment());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<ArticleComment>>> getComments(
      String address, int articleId, int offset, int limit) async {
    if (await networkStatus.isConnected) {
      try {
        final articleComments = (await articleRemoteDataSource.getComments(
                address, articleId, offset, limit))
            .toArticleComments();
        return Right(articleComments);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, EmptyResponse>> postComment(
      String address, String token, String comment, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await articleRemoteDataSource.postComment(
                address, token, comment, articleId))
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
  Future<Either<Failure, EmptyResponse>> deleteComment(
      String address, String token, int commentId, int articleId) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await articleRemoteDataSource.deleteComment(
                address, token, commentId, articleId))
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
  Future<Either<Failure, EmptyResponse>> putComment(
      String address, String token, int commentId, String comment) async {
    if (await networkStatus.isConnected) {
      try {
        final result = (await articleRemoteDataSource.putComment(
                address, token, commentId, comment))
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
