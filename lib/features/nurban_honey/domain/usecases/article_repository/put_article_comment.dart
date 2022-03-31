import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';

import '../../repositories/article_repository.dart';

class PutArticleComment implements UseCase<EmptyResponse, Params> {
  final ArticleRepository repository;
  PutArticleComment(this.repository);
  @override
  Future<Either<Failure, EmptyResponse>> call(params) async {
    return await repository.putComment(
        params.address, params.token, params.commentId, params.comment);
  }
}

class Params extends Equatable {
  final String address;
  final String token;
  final int commentId;
  final String comment;

  const Params(
      {required this.address,
      required this.token,
      required this.commentId,
      required this.comment});

  @override
  List<Object?> get props => [address, token, commentId, comment];
}
