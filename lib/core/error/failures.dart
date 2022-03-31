import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {}

class InvalidInputFailure extends Failure {}

class AuthorizationFailure extends Failure {}

class LoginFailure extends Failure {}

class NetworkFailure extends Failure {}
