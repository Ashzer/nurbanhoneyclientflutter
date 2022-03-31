import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/login_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/app_version_model/app_version_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/nurban_token_model/nurban_token_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/token_status/token_status_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/token_status/token_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/app_version/app_version.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final NetworkStatus networkStatus;
  final LoginRemoteDataSource remoteDataSource;
  LoginRepositoryImpl(this.networkStatus, this.remoteDataSource);

  @override
  Future<Either<Failure, AppVersion>> isAppUpdatable(String appName) async {
    if (await networkStatus.isConnected) {
      try {
        final appVersion =
            (await remoteDataSource.isAppUpdatable(appName)).toAppVersion();
        return Right(appVersion);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, NurbanToken>> getNurbanToken(
      String loginType, String thirdPartyLoginKey) async {
    if (await networkStatus.isConnected) {
      try {
        final nurbanToken = (await remoteDataSource.getNurbanToken(
                loginType, thirdPartyLoginKey))
            .toNurbanToken();
        return Right(nurbanToken);
      } on LoginException {
        return Left(LoginFailure());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, TokenStatus>> isTokenValid(String nurbanToken) async {
    if (await networkStatus.isConnected) {
      try {
        final tokenStatus =
            (await remoteDataSource.isTokenValid(nurbanToken)).toTokenStatus();
        return Right(tokenStatus);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
