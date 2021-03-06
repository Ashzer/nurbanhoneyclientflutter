// Mocks generated by Mockito 5.1.0 from annotations
// in nurbanhoney_flutter/test/features/nurban_honey/domain/usecases/article_repository/delete_dislike_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:nurbanhoney_flutter/core/error/failures.dart' as _i5;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart'
    as _i10;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_detail/article_detail.dart'
    as _i7;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_item/article_item.dart'
    as _i6;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_ratings/article_ratings.dart'
    as _i9;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart'
    as _i8;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart'
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

/// A class which mocks [ArticleRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockArticleRepository extends _i1.Mock implements _i3.ArticleRepository {
  MockArticleRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.ArticleItem>>> getArticles(
          String? address, int? flag, int? offset, int? limit) =>
      (super.noSuchMethod(
              Invocation.method(#getArticles, [address, flag, offset, limit]),
              returnValue:
                  Future<_i2.Either<_i5.Failure, List<_i6.ArticleItem>>>.value(
                      _FakeEither_0<_i5.Failure, List<_i6.ArticleItem>>()))
          as _i4.Future<_i2.Either<_i5.Failure, List<_i6.ArticleItem>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i7.ArticleDetail>> getArticle(
          String? address, int? articleId) =>
      (super.noSuchMethod(Invocation.method(#getArticle, [address, articleId]),
          returnValue: Future<_i2.Either<_i5.Failure, _i7.ArticleDetail>>.value(
              _FakeEither_0<_i5.Failure, _i7.ArticleDetail>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i7.ArticleDetail>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>> postLike(
          String? address, String? token, int? articleId) =>
      (super.noSuchMethod(
          Invocation.method(#postLike, [address, token, articleId]),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i8.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>> deleteLike(
          String? address, String? token, int? articleId) =>
      (super.noSuchMethod(
          Invocation.method(#deleteLike, [address, token, articleId]),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i8.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>> postDislike(
          String? address, String? token, int? articleId) =>
      (super.noSuchMethod(
          Invocation.method(#postDislike, [address, token, articleId]),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i8.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>> deleteDislike(
          String? address, String? token, int? articleId) =>
      (super.noSuchMethod(
          Invocation.method(#deleteDislike, [address, token, articleId]),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i8.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i9.ArticleRatings>> getArticleRatings(
          String? address, String? token, int? articleId) =>
      (super.noSuchMethod(
          Invocation.method(#getArticleRatings, [address, token, articleId]),
          returnValue:
              Future<_i2.Either<_i5.Failure, _i9.ArticleRatings>>.value(
                  _FakeEither_0<_i5.Failure, _i9.ArticleRatings>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i9.ArticleRatings>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i10.ArticleComment>> getComment(
          String? address, int? commentId) =>
      (super.noSuchMethod(Invocation.method(#getComment, [address, commentId]),
              returnValue:
                  Future<_i2.Either<_i5.Failure, _i10.ArticleComment>>.value(
                      _FakeEither_0<_i5.Failure, _i10.ArticleComment>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i10.ArticleComment>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i10.ArticleComment>>> getComments(
          String? address, int? articleId, int? offset, int? limit) =>
      (super.noSuchMethod(
          Invocation.method(#getComments, [address, articleId, offset, limit]),
          returnValue: Future<
                  _i2.Either<_i5.Failure, List<_i10.ArticleComment>>>.value(
              _FakeEither_0<_i5.Failure, List<_i10.ArticleComment>>())) as _i4
          .Future<_i2.Either<_i5.Failure, List<_i10.ArticleComment>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>> postComment(
          String? address, String? token, String? comment, int? articleId) =>
      (super.noSuchMethod(
          Invocation.method(#postComment, [address, token, comment, articleId]),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i8.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>> deleteComment(
          String? address, String? token, int? commentId, int? articleId) =>
      (super.noSuchMethod(
          Invocation.method(
              #deleteComment, [address, token, commentId, articleId]),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i8.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>> patchComment(
          String? address, String? token, int? commentId, String? comment) =>
      (super.noSuchMethod(
          Invocation.method(
              #patchComment, [address, token, commentId, comment]),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>.value(
              _FakeEither_0<_i5.Failure, _i8.EmptyResponse>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.EmptyResponse>>);
}
