import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';

class RequestSignOut implements UseCase<EmptyResponse, Params> {
  final ProfileRepository repository;
  RequestSignOut(this.repository);

  @override
  Future<Either<Failure, EmptyResponse>> call(Params params) async {
    return await repository.requestSignOut(
        token: params.token, userId: params.userId);
  }
}

class Params extends Equatable {
  final String token;
  final int userId;
  const Params({required this.token, required this.userId});
  @override
  List<Object?> get props => [token, userId];
}
