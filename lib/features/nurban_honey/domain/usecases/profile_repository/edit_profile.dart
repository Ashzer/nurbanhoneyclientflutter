import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';

class EditProfile implements UseCase<EmptyResponse, Params> {
  final ProfileRepository repository;
  EditProfile(this.repository);

  @override
  Future<Either<Failure, EmptyResponse>> call(Params params) async {
    return await repository.editProfile(
        token: params.token,
        nickname: params.nickname,
        description: params.description,
        insignias: params.insignias);
  }
}

class Params extends Equatable {
  final String token;
  final String nickname;
  final String description;
  final List<String> insignias;

  const Params(
      {required this.token,
      required this.nickname,
      required this.description,
      required this.insignias});
  @override
  List<Object?> get props => [token, nickname, description, insignias];
}
