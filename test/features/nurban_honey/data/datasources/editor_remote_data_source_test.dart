import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/editor_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'editor_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client, File])
void main() {
  late EditorRemoteDataSource dataSource;
  late MockClient mockHttpClient;
  late MockFile mockFile;
  setUp(() {
    mockHttpClient = MockClient();
    //mockFile = MockFile();
    dataSource = EditorRemoteDataSourceImpl(client: mockHttpClient);
  });

  const String baseUrl = "http://3.37.155.214:8128/board";

  group('Editor remote data source tests :', () {
    const address = "address";
    const token = "token";
    const title = "title";
    const uuid = "uuid";
    const lossCut = "lossCut";
    const thumbnail = "thumbnail";
    const content = "content";
    const articleId = 1;
    const imagePath = "imagePath";
    void setUpMockHttpClientSuccess(
        Function method, int responseCode, String fileName) {
      when(method(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture(fileName), responseCode));
    }

    void setUpMockHttpClientFailure(Function method, int responseCode) {
      when(method(any, headers: anyNamed("headers"))).thenAnswer(
          (_) async => http.Response("Server Error occurred", responseCode));
    }

    final tEmptyResponseModel =
        EmptyResponseModel.fromJson(jsonDecode(fixture("empty_response.json")));

    group('postNurbanArticle', () {
      test(
        "적절한 URL생성해서 POST 요청// application/json, token 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.post, 201, "empty_response.json");

          dataSource.postNurbanArticle(
              address, token, title, uuid, lossCut, thumbnail, content);

          verify(mockHttpClient.post(
              Uri.parse(
                  "$baseUrl/$address/article?title=$title&uuid=$uuid&lossCut=$lossCut&thumbnail=$thumbnail&content=$content"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 201이면 새로운 글 생성하고 응답이 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.post, 201, "empty_response.json");

          final result = await dataSource.postNurbanArticle(
              address, token, title, uuid, lossCut, thumbnail, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.post, 404);

          final call = dataSource.postNurbanArticle;

          expect(
              () => call(
                  address, token, title, uuid, lossCut, thumbnail, content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.post, 401);

          final call = dataSource.postNurbanArticle;

          expect(
              () => call(
                  address, token, title, uuid, lossCut, thumbnail, content),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('postArticle', () {
      test(
        "적절한 URL생성해서 POST 요청// application/json, token 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.post, 201, "empty_response.json");

          dataSource.postArticle(
              address, token, title, uuid, thumbnail, content);

          verify(mockHttpClient.post(
              Uri.parse(
                  "$baseUrl/$address/article?title=$title&uuid=$uuid&thumbnail=$thumbnail&content=$content"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 201이면 새로운 글 생성하고 응답이 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.post, 201, "empty_response.json");

          final result = await dataSource.postArticle(
              address, token, title, uuid, thumbnail, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.post, 404);

          final call = dataSource.postArticle;

          expect(() => call(address, token, title, uuid, thumbnail, content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.post, 401);

          final call = dataSource.postArticle;

          expect(() => call(address, token, title, uuid, thumbnail, content),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('patchNurbanArticle', () {
      test(
        "적절한 URL생성해서 PATCH 요청// application/json, token 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          dataSource.patchNurbanArticle(
              address, token, articleId, thumbnail, title, lossCut, content);

          verify(mockHttpClient.patch(
              Uri.parse(
                  "$baseUrl/$address/article?id=$articleId&thumbnail=$thumbnail&title=$title&lossCut=$lossCut&content=$content"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 201이면 새로운 글 생성하고 응답이 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          final result = await dataSource.patchNurbanArticle(
              address, token, articleId, thumbnail, title, lossCut, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.patch, 404);

          final call = dataSource.patchNurbanArticle;

          expect(
              () => call(address, token, articleId, thumbnail, title, lossCut,
                  content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.patch, 401);

          final call = dataSource.patchNurbanArticle;

          expect(
              () => call(address, token, articleId, thumbnail, title, lossCut,
                  content),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('patchArticle', () {
      test(
        "적절한 URL생성해서 PATCH 요청// application/json, token 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          dataSource.patchArticle(
              address, token, articleId, thumbnail, title, content);

          verify(mockHttpClient.patch(
              Uri.parse(
                  "$baseUrl/$address/article?id=$articleId&thumbnail=$thumbnail&title=$title&content=$content"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 200이면 새로운 글 생성하고 응답이 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          final result = await dataSource.patchArticle(
              address, token, articleId, thumbnail, title, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.patch, 404);

          final call = dataSource.patchArticle;

          expect(
              () => call(address, token, articleId, thumbnail, title, content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.patch, 401);

          final call = dataSource.patchArticle;

          expect(
              () => call(address, token, articleId, thumbnail, title, content),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('deleteArticle', () {
      test(
        "적절한 URL생성해서 DELETE 요청// application/json, token 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          dataSource.deleteArticle(address, token, articleId, uuid);

          verify(mockHttpClient.delete(
              Uri.parse("$baseUrl/$address/article?id=$articleId&uuid=$uuid"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code가 200이면 새로운 글 생성하고 응답이 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          final result =
              await dataSource.deleteArticle(address, token, articleId, uuid);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 404);

          final call = dataSource.deleteArticle;

          expect(() => call(address, token, articleId, uuid),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 401);

          final call = dataSource.deleteArticle;

          expect(() => call(address, token, articleId, uuid),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });
    //TODO : Image upload test Unimplemented
  });
}
