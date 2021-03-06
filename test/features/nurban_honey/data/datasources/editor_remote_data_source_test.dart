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
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/image_post_response_model/image_post_response_model.dart';

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
    const imagePath =
        "C:/Users/intyp/Desktop/workspace/nurbanhoney_flutter/web/icons/Icon-192.png";
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

    final tEmptyResponseModel =
        EmptyResponseModel.fromJson(jsonDecode(fixture("empty_response.json")));

    group('postNurbanArticle', () {
      test(
        "????????? URL???????????? POST ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          dataSource.postNurbanArticle(
              address, token, title, uuid, lossCut, thumbnail, content);

          verify(mockHttpClient
              .post(Uri.parse("$baseUrl/$address/article"), headers: {
            'Content-Type': 'application/json',
            'token': token
          }, body: {
            'title': title,
            'uuid': uuid,
            'lossCut': lossCut,
            'thumbnail': thumbnail,
            'content': 'content'
          }));
        },
      );

      test(
        "response code??? 201?????? ????????? ??? ???????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          final result = await dataSource.postNurbanArticle(
              address, token, title, uuid, lossCut, thumbnail, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 404);

          final call = dataSource.postNurbanArticle;

          expect(
              () => call(
                  address, token, title, uuid, lossCut, thumbnail, content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 401);

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
        "????????? URL???????????? POST ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          dataSource.postArticle(
              address, token, title, uuid, thumbnail, content);

          verify(mockHttpClient.post(Uri.parse("$baseUrl/$address/article"),
              headers: {
                'Content-Type': 'application/json',
                'token': token
              },
              body: {
                'title': title,
                'uuid': uuid,
                'thumbnail': thumbnail,
                'content': content
              }));
        },
      );

      test(
        "response code??? 201?????? ????????? ??? ???????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          final result = await dataSource.postArticle(
              address, token, title, uuid, thumbnail, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 404);

          final call = dataSource.postArticle;

          expect(() => call(address, token, title, uuid, thumbnail, content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 401);

          final call = dataSource.postArticle;

          expect(() => call(address, token, title, uuid, thumbnail, content),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('patchNurbanArticle', () {
      test(
        "????????? URL???????????? PATCH ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          dataSource.patchNurbanArticle(
              address, token, articleId, thumbnail, title, lossCut, content);

          verify(mockHttpClient
              .patch(Uri.parse("$baseUrl/$address/article"), headers: {
            'Content-Type': 'application/json',
            'token': token
          }, body: {
            'id': '$articleId',
            'thumbnail': thumbnail,
            'title': title,
            'lossCut': lossCut,
            'content': content
          }));
        },
      );

      test(
        "response code??? 201?????? ????????? ??? ???????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          final result = await dataSource.patchNurbanArticle(
              address, token, articleId, thumbnail, title, lossCut, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 404);

          final call = dataSource.patchNurbanArticle;

          expect(
              () => call(address, token, articleId, thumbnail, title, lossCut,
                  content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 401);

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
        "????????? URL???????????? PATCH ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          dataSource.patchArticle(
              address, token, articleId, thumbnail, title, content);

          verify(mockHttpClient.patch(Uri.parse("$baseUrl/$address/article"),
              headers: {
                'Content-Type': 'application/json',
                'token': token
              },
              body: {
                'id': '$articleId',
                'thumbnail': thumbnail,
                'title': title,
                'content': content
              }));
        },
      );

      test(
        "response code??? 200?????? ????????? ??? ???????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          final result = await dataSource.patchArticle(
              address, token, articleId, thumbnail, title, content);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 404);

          final call = dataSource.patchArticle;

          expect(
              () => call(address, token, articleId, thumbnail, title, content),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 401);

          final call = dataSource.patchArticle;

          expect(
              () => call(address, token, articleId, thumbnail, title, content),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('deleteArticle', () {
      test(
        "????????? URL???????????? DELETE ??????// application/json, token ?????? ??????",
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
        "response code??? 200?????? ????????? ??? ???????????? ????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          final result =
              await dataSource.deleteArticle(address, token, articleId, uuid);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 404);

          final call = dataSource.deleteArticle;

          expect(() => call(address, token, articleId, uuid),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 401);

          final call = dataSource.deleteArticle;

          expect(() => call(address, token, articleId, uuid),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    //TODO : Image upload test Unimplementation
    group('postImage', () {
      final tImagePostResponseModel = ImagePostResponseModel.fromJson(
          jsonDecode(fixture("image_post_response.json")));
      test(
        "????????? URL???????????? POST ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "image_post_response.json");
          File imageFile = File(imagePath);
          List<int> imageBytes = imageFile.readAsBytesSync();
          String base64Image = base64Encode(imageBytes);

          dataSource.postImage(address, token, uuid, imagePath);

          verify(mockHttpClient.post(
              Uri.parse("$baseUrl/$address/article/upload/image"),
              headers: {
                'Content-Type': 'application/json; charset=UTF-8',
                'token': token
              },
              body: jsonEncode({'uuid': uuid, 'image': '$base64Image'})));
        },
      );

      test(
        "response code??? 200?????? ????????? ??? ???????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "image_post_response.json");

          final result =
              await dataSource.postImage(address, token, uuid, imagePath);
          expect(result, equals(tImagePostResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 404);

          final call = dataSource.postImage;

          expect(() => call(address, token, uuid, imagePath),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 401);

          final call = dataSource.postImage;

          expect(() => call(address, token, uuid, imagePath),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('deleteImages', () {
      test(
        "????????? URL???????????? DELETE ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          dataSource.deleteImages(address, token, uuid);

          verify(mockHttpClient.delete(
              Uri.parse("$baseUrl/$address/article/upload/image?uuid=$uuid"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code??? 200?????? ????????? ??? ???????????? ????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          final result = await dataSource.deleteImages(address, token, uuid);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 404);

          final call = dataSource.deleteImages;

          expect(() => call(address, token, uuid),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 401);

          final call = dataSource.deleteImages;

          expect(() => call(address, token, uuid),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });
  });
}
