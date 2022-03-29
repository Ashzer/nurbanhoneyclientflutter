import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/article_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model/article_item_model.dart';
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
  Future<Either<Failure, EmptyResponse>> deleteComment(
      String address, String token, int commentId, int articleId) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyResponse>> deleteDislike(
      String address, String token, int articleId) {
    // TODO: implement deleteDislike
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyResponse>> deleteLike(
      String address, String token, int articleId) {
    // TODO: implement deleteLike
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ArticleDetail>> getArticle(
      String address, String token, int articleId) {
    // TODO: implement getArticle
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ArticleRatings>> getArticleRatings(
      String address, String token, int articleId) {
    // TODO: implement getArticleRatings
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ArticleComment>> getComment(
      String address, int commentId) {
    // TODO: implement getComment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArticleComment>>> getComments(
      String address, int articleId, int offset, int limit) {
    // TODO: implement getComments
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyResponse>> postComment(
      String address, String token, String comment, int articleId) {
    // TODO: implement postComment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyResponse>> postDislike(
      String address, String token, int articleId) {
    // TODO: implement postDislike
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyResponse>> postLike(
      String address, String token, int articleId) {
    // TODO: implement postLike
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyResponse>> putComment(
      String address, String token, int commentId, String comment) {
    // TODO: implement putComment
    throw UnimplementedError();
  }
}
