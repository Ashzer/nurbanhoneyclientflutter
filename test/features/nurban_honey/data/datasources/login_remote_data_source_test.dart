import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/login_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/app_version_model/app_version_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/nurban_token_model/nurban_token_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/token_status/token_status_model.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'login_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late LoginRemoteDataSource dataSource;
  late MockClient mockHttpClient;
  setUp(() {
    mockHttpClient = MockClient();
    dataSource = LoginRemoteDataSourceImpl(client: mockHttpClient);
  });

  const String baseUrl = "http://3.37.155.214:8128";

  group('Login remote data source tests :', () {
    void setUpMockHttpClientSuccess(
        Function method, int responseCode, String fileName) {
      when(method(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture(fileName), responseCode));
    }

    void setUpMockHttpClientWithRequestBodySuccess(
        Function method, int responseCode, String fileName) {
      when(method(any, headers: anyNamed('headers'), body: anyNamed('body')))
          .thenAnswer(
              (_) async => http.Response(fixture(fileName), responseCode));
    }

    void setUpMockHttpClientFailure(Function method, int responseCode) {
      when(method(any, headers: anyNamed("headers"))).thenAnswer(
          (_) async => http.Response("Server Error occurred", responseCode));
    }

    void setUpMockHttpClientWithRequestBodyFailure(
        Function method, int responseCode) {
      when(method(any, headers: anyNamed("headers"), body: anyNamed('body')))
          .thenAnswer((_) async =>
              http.Response("Server Error occurred", responseCode));
    }

    group('getNurbanToken', () {
      final tNurbanTokenModel =
          NurbanTokenModel.fromJson(jsonDecode(fixture("nurban_token.json")));
      const loginType = "loginType1";
      const key = "thirdPartyLoginKey";
      test(
        "????????? URL???????????? POST ??????// application/json ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.post, 201, "nurban_token.json");

          dataSource.getNurbanToken(loginType, key);

          verify(mockHttpClient.post(
              Uri.parse("$baseUrl/login?loginType=$loginType&key=$key"),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code??? 200?????? board ???????????? ??????????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.post, 201, "nurban_token.json");

          final result = await dataSource.getNurbanToken(loginType, key);

          expect(result, equals(tNurbanTokenModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.post, 404);

          final call = dataSource.getNurbanToken;

          expect(() => call(loginType, key), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.post, 401);

          final call = dataSource.getNurbanToken;

          expect(() => call(loginType, key),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('isAppUpdatable', () {
      final tAppVersionModel =
          AppVersionModel.fromJson(jsonDecode(fixture("app_version.json")));
      const appName = "appName";
      test(
        "????????? URL???????????? GET ??????// application/json ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "app_version.json");

          dataSource.isAppUpdatable(appName);

          verify(mockHttpClient.get(
              Uri.parse("$baseUrl/appversion?app=$appName"),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code??? 200?????? board ???????????? ??????????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "app_version.json");

          final result = await dataSource.isAppUpdatable(appName);

          expect(result, equals(tAppVersionModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.isAppUpdatable;

          expect(() => call(appName), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.isAppUpdatable;

          expect(() => call(appName), throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('isTokenValid', () {
      final tTokenStatusModel =
          TokenStatusModel.fromJson(jsonDecode(fixture("token_status.json")));
      const nurbanToken = "nurbanToken1";
      test(
        "????????? URL???????????? GET ??????// application/json ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "token_status.json");

          dataSource.isTokenValid(nurbanToken);

          verify(mockHttpClient.get(Uri.parse("$baseUrl/token/exam"), headers: {
            'Content-Type': 'application/json',
            'token': nurbanToken
          }));
        },
      );

      test(
        "response code??? 200?????? board ???????????? ??????????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "token_status.json");

          final result = await dataSource.isTokenValid(nurbanToken);

          expect(result, equals(tTokenStatusModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.isTokenValid;

          expect(() => call(nurbanToken), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.isTokenValid;

          expect(
              () => call(nurbanToken), throwsA(isA<AuthorizationException>()));
        },
      );
    });
  });
}
