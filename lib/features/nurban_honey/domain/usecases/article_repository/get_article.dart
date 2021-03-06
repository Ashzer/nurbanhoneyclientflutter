import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_detail/article_detail.dart';

class GetArticle implements UseCase<ArticleDetail, Params> {
  final ArticleRepository repository;
  GetArticle(this.repository);
  @override
  Future<Either<Failure, ArticleDetail>> call(Params params) async {
    return await repository.getArticle(params.address, params.articleId);
  }
}

class Params extends Equatable {
  final String address;
  final int articleId;

  const Params({required this.address, required this.articleId});

  @override
  List<Object?> get props => [address, articleId];
}
