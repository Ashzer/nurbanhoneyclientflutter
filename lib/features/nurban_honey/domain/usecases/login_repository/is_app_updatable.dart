import 'package:equatable/equatable.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/app_version/app_version.dart';

class IsAppUpdatable implements UseCase<AppVersion, Params> {
  final LoginRepository repository;
  IsAppUpdatable(this.repository);
  @override
  Future<Either<Failure, AppVersion>> call(params) async {
    return await repository.isAppUpdatable(params.appName);
  }
}

class Params extends Equatable {
  final String appName;
  const Params({required this.appName});
  @override
  List<Object?> get props => [appName];
}
