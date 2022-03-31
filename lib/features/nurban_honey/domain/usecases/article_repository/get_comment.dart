import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart';

class GetComment implements UseCase<ArticleComment, Params> {
  final ArticleRepository repository;
  GetComment(this.repository);

  @override
  Future<Either<Failure, ArticleComment>> call(params) async {
    return await repository.getComment(params.address, params.commentId);
  }
}

class Params extends Equatable {
  final String address;
  final int commentId;
  const Params({required this.address, required this.commentId});

  @override
  List<Object?> get props => [address, commentId];
}
