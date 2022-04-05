import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/profile_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_article_model/profile_article_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_comment_model/profile_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_model/profile_model.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'profile_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late ProfileRemoteDataSource dataSource;
  late MockClient mockHttpClient;
  setUp(() {
    mockHttpClient = MockClient();
    dataSource = ProfileRemoteDataSourceImpl(client: mockHttpClient);
  });

  const String baseUrl = "http://3.37.155.214:8128";

  group('Profile remote data source tests :', () {
    const token = "myToken";
    const nickname = "nickname1";
    const description = "description1";
    const insignias = ["insigs"];
    const offset = 0;
    const limit = 10;
    const userId = 2;
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

    group('editProfile', () {
      final tEmptyResponseModel = EmptyResponseModel.fromJson(
          jsonDecode(fixture("empty_response.json")));

      test(
        "적절한 URL생성해서 PATCH 요청// application/json 헤더 request body 포함",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          dataSource.editProfile(token, nickname, description, insignias);

          verify(mockHttpClient.patch(Uri.parse("$baseUrl/profile/edit"),
              headers: {
                'Content-Type': 'application/json',
                'token': token
              },
              body: {
                'nickname': nickname,
                'description': description,
                'insignia': insignias
              }));
        },
      );

      test(
        "response code가 200이면 board 리스트가 서버로부터 반환됨",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          final result = await dataSource.editProfile(
              token, nickname, description, insignias);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 404);

          final call = dataSource.editProfile;

          expect(() => call(token, nickname, description, insignias),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 401);

          final call = dataSource.editProfile;

          expect(() => call(token, nickname, description, insignias),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('getProfile', () {
      final tProfileModel =
          ProfileModel.fromJson(jsonDecode(fixture("profile.json")));

      test(
        "적절한 URL생성해서 GET 요청// application/json, 토큰 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(mockHttpClient.get, 200, "profile.json");

          dataSource.getProfile(token);

          verify(mockHttpClient.get(Uri.parse("$baseUrl/profile"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 200이면 board 리스트가 서버로부터 반환됨",
        () async {
          setUpMockHttpClientSuccess(mockHttpClient.get, 200, "profile.json");

          final result = await dataSource.getProfile(token);

          expect(result, equals(tProfileModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getProfile;

          expect(() => call(token), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getProfile;

          expect(() => call(token), throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('getProfileArticles', () {
      final List<dynamic> decode = jsonDecode(fixture("profile_articles.json"));
      final tProfileArticleModel =
          decode.map((e) => ProfileArticleModel.fromJson(e)).toList();
      test(
        "적절한 URL생성해서 GET 요청// application/json 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "profile_articles.json");

          dataSource.getProfileArticles(token, offset, limit);

          verify(mockHttpClient.get(
              Uri.parse(
                  "$baseUrl/profile/myarticle?offset=$offset&limit=$limit"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 200이면 board 리스트가 서버로부터 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "profile_articles.json");

          final result =
              await dataSource.getProfileArticles(token, offset, limit);

          expect(result, equals(tProfileArticleModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getProfileArticles;

          expect(() => call(token, offset, limit),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getProfileArticles;

          expect(() => call(token, offset, limit),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('getProfileComments', () {
      final List<dynamic> decode = jsonDecode(fixture("profile_comments.json"));
      final tProfileCommentModel =
          decode.map((e) => ProfileCommentModel.fromJson(e)).toList();
      test(
        "적절한 URL생성해서 GET 요청// application/json 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "profile_comments.json");

          dataSource.getProfileComments(token, offset, limit);

          verify(mockHttpClient.get(
              Uri.parse(
                  "$baseUrl/profile/mycomment?offset=$offset&limit=$limit"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 200이면 board 리스트가 서버로부터 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "profile_comments.json");

          final result =
              await dataSource.getProfileComments(token, offset, limit);

          expect(result, equals(tProfileCommentModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getProfileComments;

          expect(() => call(token, offset, limit),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getProfileComments;

          expect(() => call(token, offset, limit),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('requestSignOut', () {
      final tEmptyResponseModel = EmptyResponseModel.fromJson(
          jsonDecode(fixture("empty_response.json")));
      test(
        "적절한 URL생성해서 DELETE 요청// application/json, token 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          dataSource.requestSignOut(token, userId);

          verify(mockHttpClient.delete(
              Uri.parse("$baseUrl/profile/withdrawal?id=$userId"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 200이면 board 리스트가 서버로부터 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          final result = await dataSource.requestSignOut(token, userId);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 404);

          final call = dataSource.requestSignOut;

          expect(() => call(token, userId), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 401);

          final call = dataSource.requestSignOut;

          expect(() => call(token, userId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });
  });
}
