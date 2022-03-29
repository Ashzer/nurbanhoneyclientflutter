import 'package:dartz/dartz.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/rank/rank.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/rank_repository.dart';

class GetRanks implements UseCase<List<Rank>, NoParams> {
  final RankRepository repository;
  GetRanks(this.repository);

  @override
  Future<Either<Failure, List<Rank>>> call(NoParams params) async {
    return await repository.getRanks();
  }
}
