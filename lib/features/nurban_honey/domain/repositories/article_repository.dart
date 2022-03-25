import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_ratings/article_ratings.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_item/article_item.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';

import '../../../../core/error/failures.dart';
import '../entities/article_detail/article_detail.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<ArticleItem>>> getArticles(
      {String address, int flag, int offset, int limit});

  Future<Either<Failure, ArticleDetail>> getArticle(
      {String address, String token, int articleId});

  Future<Either<Failure, EmptyResponse>> postLike(
      {String address, String token, int articleId});

  Future<Either<Failure, EmptyResponse>> deleteLike(
      {String address, String token, int articleId});

  Future<Either<Failure, EmptyResponse>> postDislike(
      {String address, String token, int articleId});

  Future<Either<Failure, EmptyResponse>> deleteDislike(
      {String address, String token, int articleId});

  Future<Either<Failure, ArticleRatings>> getArticleRatings(
      {String address, String token, int articleId});

  Future<Either<Failure, ArticleComment>> getComment(
      {String address, int commentId});

  Future<Either<Failure, List<ArticleComment>>> getComments(
      {String address, int articleId, int offset, int limit});

  Future<Either<Failure, EmptyResponse>> postComment(
      {String address, String token, String comment, int articleId});

  Future<Either<Failure, EmptyResponse>> deleteComment(
      {String address, String token, int commentId, int articleId});

  Future<Either<Failure, EmptyResponse>> putComment(
      {String address, String token, int commentId, String comment});
}
