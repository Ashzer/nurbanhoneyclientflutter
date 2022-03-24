import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';

class PostLike implements UseCase<EmptyResponse, Params> {
  final ArticleRepository repository;
  PostLike(this.repository);

  @override
  Future<Either<Failure, EmptyResponse>> call(params) async {
    return await repository.postLike(
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
