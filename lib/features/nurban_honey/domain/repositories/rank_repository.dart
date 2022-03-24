import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/rank/rank_simple.dart';

import '../entities/rank/rank.dart';

abstract class RankRepository {
  Future<Either<Failure, List<Rank>>> getRanks();
  Future<Either<Failure, List<RankSimple>>> getSimpleRanks(
      {int offset, int limit});
}
