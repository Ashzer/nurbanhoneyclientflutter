import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';

class PostNurbanArticle implements UseCase<EmptyResponse, Params> {
  final EditorRepository repository;
  PostNurbanArticle(this.repository);

  @override
  Future<Either<Failure, EmptyResponse>> call(Params params) async {
    return await repository.postNurbanArticle(
        address: params.address,
        token: params.token,
        title: params.title,
        uuid: params.uuid,
        lossCut: params.lossCut,
        thumbnail: params.thumbnail,
        content: params.content);
  }
}

class Params extends Equatable {
  final String address;
  final String token;
  final String title;
  final String uuid;
  final String lossCut;
  final String? thumbnail;
  final String content;
  const Params(
      {required this.address,
      required this.token,
      required this.title,
      required this.uuid,
      required this.lossCut,
      this.thumbnail,
      required this.content});
  @override
  List<Object?> get props =>
      [address, token, title, uuid, lossCut, thumbnail, content];
}
