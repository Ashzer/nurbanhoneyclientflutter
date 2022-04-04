import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';

class PatchArticle implements UseCase<EmptyResponse, Params> {
  final EditorRepository repository;
  PatchArticle(this.repository);

  @override
  Future<Either<Failure, EmptyResponse>> call(Params params) async {
    return await repository.patchArticle(params.address, params.token,
        params.articleId, params.thumbnail, params.title, params.content);
  }
}

class Params extends Equatable {
  final String address;
  final String token;
  final int articleId;
  final String? thumbnail;
  final String title;
  final String content;
  const Params(
      {required this.address,
      required this.token,
      required this.articleId,
      this.thumbnail,
      required this.title,
      required this.content});
  @override
  List<Object?> get props =>
      [address, token, articleId, thumbnail, title, content];
}
