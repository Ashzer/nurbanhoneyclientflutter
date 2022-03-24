import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';

import '../../../../core/error/failures.dart';

abstract class BoardRepository {
  Future<Either<Failure, List<BoardInfo>>> getBoards();
}
