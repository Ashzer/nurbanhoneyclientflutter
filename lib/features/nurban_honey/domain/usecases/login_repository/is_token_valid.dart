import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/token_status/token_status.dart';

class IsTokenValid implements UseCase<TokenStatus, Params> {
  final LoginRepository repository;
  IsTokenValid(this.repository);
  @override
  Future<Either<Failure, TokenStatus>> call(params) async {
    return await repository.isTokenValid(params.nurbanToken);
  }
}

class Params extends Equatable {
  final String nurbanToken;
  const Params({required this.nurbanToken});

  @override
  List<Object?> get props => [nurbanToken];
}
