import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';

class PostDislike implements UseCase<EmptyResponse, Params> {
  final ArticleRepository repository;
  PostDislike(this.repository);
  @override
  Future<Either<Failure, EmptyResponse>> call(Params params) async {
    return await repository.postDislike(
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
