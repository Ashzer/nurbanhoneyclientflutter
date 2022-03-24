import 'package:dartz/dartz.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/board_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';

class GetBoards implements UseCase<List<BoardInfo>, NoParams> {
  final BoardRepository repository;
  GetBoards(this.repository);

  @override
  Future<Either<Failure, List<BoardInfo>>> call(NoParams params) async {
    return await repository.getBoards();
  }
}
