import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';

import '../../entities/profile/profile_article/profile_article.dart';

class GetProfileArticles implements UseCase<List<ProfileArticle>, Params> {
  final ProfileRepository repository;
  GetProfileArticles(this.repository);

  @override
  Future<Either<Failure, List<ProfileArticle>>> call(Params params) async {
    return await repository.getProfileArticles(
        token: params.token, offset: params.offset, limit: params.limit);
  }
}

class Params extends Equatable {
  final String token;
  final int offset;
  final int limit;

  const Params(
      {required this.token, required this.offset, required this.limit});
  @override
  List<Object?> get props => [token, offset, limit];
}
