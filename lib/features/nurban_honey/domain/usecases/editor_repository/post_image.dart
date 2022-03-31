import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

//change for each project
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/image_post_response/image_post_response.dart';

import '../../repositories/editor_repository.dart';

class PostImage implements UseCase<ImagePostResponse, Params> {
  final EditorRepository repository;
  PostImage(this.repository);

  @override
  Future<Either<Failure, ImagePostResponse>> call(Params params) async {
    return await repository.postImage(
        params.address, params.token, params.uuid, params.imagePath);
  }
}

class Params extends Equatable {
  final String address;
  final String token;
  final String uuid;
  final String imagePath;
  const Params(
      {required this.address,
      required this.token,
      required this.uuid,
      required this.imagePath});
  @override
  List<Object?> get props => [address, token, uuid, imagePath];
}
