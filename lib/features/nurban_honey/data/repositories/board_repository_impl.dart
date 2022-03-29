import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/board_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/board_repository.dart';

class BoardRepositoryImpl implements BoardRepository {
  final BoardRemoteDataSource remoteDataSource;
  final NetworkStatus networkStatus;

  BoardRepositoryImpl(
      {required this.remoteDataSource, required this.networkStatus});

  @override
  Future<Either<Failure, List<BoardInfo>>> getBoards() async {
    if (await networkStatus.isConnected) {
      try {
        final boards = (await remoteDataSource.getBoards()).toBoardInfos();
        return Right(boards);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
