import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/ariticle/article_comment/article_comment.dart';

class GetArticleComments implements UseCase<List<ArticleComment>, Params> {
  final ArticleRepository repository;
  GetArticleComments(this.repository);

  @override
  Future<Either<Failure, List<ArticleComment>>> call(params) async {
    return await repository.getComments(
        address: params.address,
        articleId: params.articleId,
        offset: params.offset,
        limit: params.limit);
  }
}

class Params extends Equatable {
  final String address;
  final int articleId;
  final int offset;
  final int limit;
  const Params(
      {required this.address,
      required this.articleId,
      required this.offset,
      required this.limit});

  @override
  List<Object?> get props => [address, articleId, offset, limit];
}
