// Mocks generated by Mockito 5.1.0 from annotations
// in nurbanhoney_flutter/test/features/nurban_honey/domain/usecases/login_repository/get_nurban_token_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:nurbanhoney_flutter/core/error/failures.dart' as _i5;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/app_version/app_version.dart'
    as _i6;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart'
    as _i7;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/TokenStatus/token_status.dart'
    as _i8;
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart'
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

/// A class which mocks [LoginRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginRepository extends _i1.Mock implements _i3.LoginRepository {
  MockLoginRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.AppVersion>> isAppUpdatable(
          {String? appName}) =>
      (super.noSuchMethod(
          Invocation.method(#isAppUpdatable, [], {#appName: appName}),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.AppVersion>>.value(
              _FakeEither_0<_i5.Failure, _i6.AppVersion>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.AppVersion>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i7.NurbanToken>> getNurbanToken(
          {String? loginType, String? thirdPartyLoginKey}) =>
      (super.noSuchMethod(
          Invocation.method(#getNurbanToken, [],
              {#loginType: loginType, #thirdPartyLoginKey: thirdPartyLoginKey}),
          returnValue: Future<_i2.Either<_i5.Failure, _i7.NurbanToken>>.value(
              _FakeEither_0<_i5.Failure, _i7.NurbanToken>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i7.NurbanToken>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i8.TokenStatus>> isTokenValid(
          {String? nurbanToken}) =>
      (super.noSuchMethod(
          Invocation.method(#isTokenValid, [], {#nurbanToken: nurbanToken}),
          returnValue: Future<_i2.Either<_i5.Failure, _i8.TokenStatus>>.value(
              _FakeEither_0<_i5.Failure, _i8.TokenStatus>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i8.TokenStatus>>);
}
