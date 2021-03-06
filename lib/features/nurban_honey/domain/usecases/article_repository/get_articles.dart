import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';

import '../../entities/article_item/article_item.dart';

class GetArticles implements UseCase<List<ArticleItem>, Params> {
  final ArticleRepository repository;

  GetArticles(this.repository);

  @override
  Future<Either<Failure, List<ArticleItem>>> call(Params params) async =>
      await repository.getArticles(
          params.address, params.flag, params.offset, params.limit);
}

class Params extends Equatable {
  final String address;
  final int flag;
  final int offset;
  final int limit;

  const Params(
      {required this.address,
      required this.flag,
      required this.offset,
      required this.limit});

  @override
  List<Object?> get props => [address, flag, offset, limit];
}
