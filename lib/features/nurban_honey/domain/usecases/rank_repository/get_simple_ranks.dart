import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/rank/rank_simple.dart';

import '../../repositories/rank_repository.dart';

class GetSimpleRanks implements UseCase<List<RankSimple>, Params> {
  final RankRepository repository;
  GetSimpleRanks(this.repository);

  @override
  Future<Either<Failure, List<RankSimple>>> call(Params params) async {
    return await repository.getSimpleRanks(
        offset: params.offset, limit: params.limit);
  }
}

class Params extends Equatable {
  final int offset;
  final int limit;
  const Params({required this.offset, required this.limit});
  @override
  List<Object?> get props => [offset, limit];
}
