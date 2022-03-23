import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/TokenStatus/token_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/app_version/app_version.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart';

import '../../../../core/error/failures.dart';

abstract class LoginRepository {
  Future<Either<Failure, AppVersion>> isAppUpdatable({String appName});

  Future<Either<Failure, NurbanToken>> getNurbanToken(
      {String loginType, String thirdPartyLoginKey});

  Future<Either<Failure, TokenStatus>> isTokenValid({String nurbanToken});
}
