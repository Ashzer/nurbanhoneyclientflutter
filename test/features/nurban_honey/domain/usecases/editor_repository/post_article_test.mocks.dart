// Mocks generated by Mockito 5.1.0 from annotations
// in nurbanhoney_flutter/test/features/nurban_honey/domain/usecases/editor_repository/post_article_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:nurbanhoney_flutter/core/error/failures.dart' as _i5;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart'
    as _i6;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/image_post_response/image_post_response.dart'
    as _i7;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [EditorRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockEditorRepository extends _i1.Mock implements _i3.EditorRepository {
  MockEditorRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>> postNurbanArticle(
          String? address,
          String? token,
          String? title,
          String? uuid,
          String? lossCut,
          String? thumbnail,
          String? content) =>
      (super.noSuchMethod(
          Invocation.method(#postNurbanArticle,
              [address, token, title, uuid, lossCut, thumbnail, content]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i6.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>> postArticle(
          String? address,
          String? token,
          String? title,
          String? uuid,
          String? thumbnail,
          String? content) =>
      (super.noSuchMethod(
          Invocation.method(
              #postArticle, [address, token, title, uuid, thumbnail, content]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i6.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>> patchNurbanArticle(
          String? address,
          String? token,
          int? articleId,
          String? thumbnail,
          String? title,
          String? lossCut,
          String? content) =>
      (super.noSuchMethod(
          Invocation.method(#patchNurbanArticle,
              [address, token, articleId, thumbnail, title, lossCut, content]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i6.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>> patchArticle(
          String? address,
          String? token,
          int? articleId,
          String? thumbnail,
          String? title,
          String? content) =>
      (super.noSuchMethod(
          Invocation.method(#patchArticle,
              [address, token, articleId, thumbnail, title, content]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i6.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>> deleteArticle(
          String? address, String? token, int? articleId, String? uuid) =>
      (super.noSuchMethod(
          Invocation.method(#deleteArticle, [address, token, articleId, uuid]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i6.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i7.ImagePostResponse>> postImage(
          String? address, String? token, String? uuid, String? imagePath) =>
      (super.noSuchMethod(
              Invocation.method(#postImage, [address, token, uuid, imagePath]),
              returnValue:
                  Future<_i2.Either<_i5.Failure, _i7.ImagePostResponse>>.value(
                      _FakeEither_0<_i5.Failure, _i7.ImagePostResponse>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i7.ImagePostResponse>>);
}
