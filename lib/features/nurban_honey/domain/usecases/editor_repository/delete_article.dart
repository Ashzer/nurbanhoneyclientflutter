import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';

import '../../repositories/editor_repository.dart';

class DeleteArticle implements UseCase<EmptyResponse, Params> {
  final EditorRepository repository;
  DeleteArticle(this.repository);

  @override
  Future<Either<Failure, EmptyResponse>> call(Params params) async {
    return await repository.deleteArticle(
        params.address, params.token, params.articleId, params.uuid);
  }
}

class Params extends Equatable {
  final String address;
  final String token;
  final int articleId;
  final String uuid;
  const Params(
      {required this.address,
      required this.token,
      required this.articleId,
      required this.uuid});
  @override
  List<Object?> get props => [address, token, articleId, uuid];
}
