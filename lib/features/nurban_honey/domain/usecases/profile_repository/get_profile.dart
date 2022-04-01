import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile/profile.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';

class GetProfile implements UseCase<Profile, Params> {
  final ProfileRepository repository;
  GetProfile(this.repository);

  @override
  Future<Either<Failure, Profile>> call(Params params) async {
    return await repository.getProfile(params.token);
  }
}

class Params extends Equatable {
  final String token;
  const Params({required this.token});
  @override
  List<Object?> get props => [token];
}
