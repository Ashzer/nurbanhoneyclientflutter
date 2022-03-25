import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_ratings/article_ratings.dart';

class GetArticleRatings implements UseCase<ArticleRatings, Params> {
  final ArticleRepository repository;

  GetArticleRatings(this.repository);

  @override
  Future<Either<Failure, ArticleRatings>> call(params) async {
    return await repository.getArticleRatings(
        address: params.address,
        token: params.token,
        articleId: params.articleId);
  }
}

class Params extends Equatable {
  final String address;
  final String token;
  final int articleId;

  const Params(
      {required this.address, required this.token, required this.articleId});

  @override
  List<Object?> get props => [address, token, articleId];
}
