import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart';

class GetNurbanToken implements UseCase<NurbanToken, Params> {
  final LoginRepository repository;
  GetNurbanToken(this.repository);
  @override
  Future<Either<Failure, NurbanToken>> call(params) async {
    return await repository.getNurbanToken(
        loginType: params.loginType,
        thirdPartyLoginKey: params.thirdPartyLoginKey);
  }
}

class Params extends Equatable {
  final String loginType;
  final String thirdPartyLoginKey;
  const Params({required this.loginType, required this.thirdPartyLoginKey});

  @override
  List<Object?> get props => [loginType, thirdPartyLoginKey];
}
