import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/article_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_comment_model/article_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_detail_model/article_detail_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model/article_item_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_ratings_model/article_ratings_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_ratings/article_ratings.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'article_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late ArticleRemoteDataSource dataSource;
  late MockClient mockHttpClient;
  setUp(() {
    mockHttpClient = MockClient();
    dataSource = ArticleRemoteDataSourceImpl(client: mockHttpClient);
  });
  const String baseUrl = "http://3.37.155.214:8128/board";
  group('Article remote data source tests :', () {
    const String address = "address";
    const String token = "token";
    const flag = 0;
    const offset = 0;
    const limit = 10;
    const articleId = 1;
    const commentId = 2;
    const comment = "comment";
    final tEmptyResponseModel =
        EmptyResponseModel.fromJson(jsonDecode(fixture("empty_response.json")));

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

    group('getArticles', () {
      final List<dynamic> decode = jsonDecode(fixture("article_items.json"));
      final tArticleItemModels =
          decode.map((e) => ArticleItemModel.fromJson(e)).toList();
      test(
        "????????? URL???????????? GET ??????// flag(?????? ??????) , offset(?????? ?????????) , limit(????????? ??? ??????) , application/json ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_items.json");

          dataSource.getArticles(address, flag, offset, limit);

          verify(mockHttpClient.get(
              Uri.parse(
                  "$baseUrl/$address?flag=$flag&offset=$offset&limit=$limit"),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code??? 200?????? article ???????????? ??????????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_items.json");

          final result =
              await dataSource.getArticles(address, flag, offset, limit);

          expect(result, equals(tArticleItemModels));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getArticles;

          expect(() => call(address, flag, offset, limit),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getArticles;

          expect(() => call(address, flag, offset, limit),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('getArticle', () {
      final tArticleDetailModel = ArticleDetailModel.fromJson(
          jsonDecode(fixture("article_detail.json")));
      test(
        "????????? URL???????????? GET ??????// application/json ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_detail.json");

          dataSource.getArticle(address, articleId);

          verify(mockHttpClient.get(
              Uri.parse("$baseUrl/$address/article?id=$articleId"),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code??? 200?????? article??? ??????????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_detail.json");

          final result = await dataSource.getArticle(address, articleId);

          expect(result, equals(tArticleDetailModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getArticle;

          expect(
              () => call(address, articleId), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getArticle;

          expect(() => call(address, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('postLike', () {
      test(
        "????????? URL???????????? POST ??????// application/json, token ?????? request body ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          dataSource.postLike(address, token, articleId);

          verify(mockHttpClient.post(
              Uri.parse("$baseUrl/$address/article/like"),
              headers: {'Content-Type': 'application/json', 'token': token},
              body: {'articleId': '$articleId'}));
        },
      );

      test(
        "response code??? 200?????? articleId??? ????????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          final result = await dataSource.postLike(address, token, articleId);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 404);

          final call = dataSource.postLike;

          expect(() => call(address, token, articleId),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 401);

          final call = dataSource.postLike;

          expect(() => call(address, token, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('deleteLike', () {
      test(
        "????????? URL???????????? DELETE ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          dataSource.deleteLike(address, token, articleId);

          verify(mockHttpClient.delete(
              Uri.parse("$baseUrl/$address/article/like?articleId=$articleId"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code??? 200?????? articleId??? ????????? ?????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          final result = await dataSource.deleteLike(address, token, articleId);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 404);

          final call = dataSource.deleteLike;

          expect(() => call(address, token, articleId),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 401);

          final call = dataSource.deleteLike;

          expect(() => call(address, token, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('postDislike', () {
      test(
        "????????? URL???????????? POST ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          dataSource.postDislike(address, token, articleId);

          verify(mockHttpClient.post(
              Uri.parse("$baseUrl/$address/article/dislike"),
              headers: {'Content-Type': 'application/json', 'token': token},
              body: {'articleId': '$articleId'}));
        },
      );

      test(
        "response code??? 200?????? articleId??? ????????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          final result =
              await dataSource.postDislike(address, token, articleId);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 404);

          final call = dataSource.postDislike;

          expect(() => call(address, token, articleId),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 401);

          final call = dataSource.postDislike;

          expect(() => call(address, token, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('deleteDislike', () {
      test(
        "????????? URL???????????? DELETE ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          dataSource.deleteDislike(address, token, articleId);

          verify(mockHttpClient.delete(
              Uri.parse(
                  "$baseUrl/$address/article/dislike?articleId=$articleId"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code??? 200?????? articleId??? ????????? ?????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          final result =
              await dataSource.deleteDislike(address, token, articleId);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 404);

          final call = dataSource.deleteDislike;

          expect(() => call(address, token, articleId),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 401);

          final call = dataSource.deleteDislike;

          expect(() => call(address, token, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('getArticleRatings', () {
      final tArticleRatingsModel = ArticleRatingsModel.fromJson(
          jsonDecode(fixture("article_ratings.json")));
      test(
        "????????? URL???????????? GET ?????? // application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_ratings.json");

          dataSource.getArticleRatings(address, token, articleId);

          verify(mockHttpClient.get(
              Uri.parse(
                  "$baseUrl/$address/article/myrating?articleId=$articleId"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code??? 200?????? articleId??? ????????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_ratings.json");

          final result =
              await dataSource.getArticleRatings(address, token, articleId);

          expect(result, equals(tArticleRatingsModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getArticleRatings;

          expect(() => call(address, token, articleId),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getArticleRatings;

          expect(() => call(address, token, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('getComment', () {
      const fileName = "article_comment.json";
      final tArticleCommentModel =
          ArticleCommentModel.fromJson(jsonDecode(fixture(fileName)));
      test(
        "????????? URL???????????? GET ?????? // application/json ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(mockHttpClient.get, 200, fileName);

          dataSource.getComment(address, commentId);

          verify(mockHttpClient.get(
              Uri.parse(
                  "$baseUrl/$address/article/comment/detail?commentId=$commentId"),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code??? 200?????? commentId??? comment??? ?????????",
        () async {
          setUpMockHttpClientSuccess(mockHttpClient.get, 200, fileName);

          final result = await dataSource.getComment(address, commentId);

          expect(result, equals(tArticleCommentModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getComment;

          expect(
              () => call(address, commentId), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getComment;

          expect(() => call(address, commentId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('getComments', () {
      final List<dynamic> decode = jsonDecode(fixture("article_comments.json"));
      final tArticleItemModels =
          decode.map((e) => ArticleCommentModel.fromJson(e)).toList();
      test(
        "????????? URL???????????? GET ??????// articleId(??? ??????) , offset(?????? ????????????) , limit(????????? ?????? ??????) , application/json ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_comments.json");

          dataSource.getComments(address, articleId, offset, limit);

          verify(mockHttpClient.get(
              Uri.parse(
                  "$baseUrl/$address/article/comment?articleId=$articleId&offset=$offset&limit=$limit"),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code??? 200?????? article ???????????? ??????????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "article_comments.json");

          final result =
              await dataSource.getComments(address, articleId, offset, limit);

          expect(result, equals(tArticleItemModels));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getComments;

          expect(() => call(address, articleId, offset, limit),
              throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getComments;

          expect(() => call(address, articleId, offset, limit),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('postComment', () {
      test(
        "????????? URL???????????? POST ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          dataSource.postComment(address, token, comment, articleId);

          verify(mockHttpClient.post(
              Uri.parse("$baseUrl/$address/article/comment"),
              headers: {'Content-Type': 'application/json', 'token': token},
              body: {'content': comment, 'articleId': '$articleId'}));
        },
      );

      test(
        "response code??? 200?????? ?????? ?????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.post, 201, "empty_response.json");

          final result =
              await dataSource.postComment(address, token, comment, articleId);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 404);

          final call = dataSource.postComment;

          expect(() => call(address, token, comment, articleId),
              throwsA(isA<ServerException>()));
        },
      );

      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.post, 401);

          final call = dataSource.postComment;

          expect(() => call(address, token, comment, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('deleteComment', () {
      test(
        "????????? URL???????????? DELETE ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          dataSource.deleteComment(address, token, commentId, articleId);

          verify(mockHttpClient.delete(
              Uri.parse(
                  "$baseUrl/$address/article/comment?id=$commentId&articleId=$articleId"),
              headers: {'Content-Type': 'application/json', 'token': token}));
        },
      );

      test(
        "response code??? 200?????? ?????? ?????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.delete, 200, "empty_response.json");

          final result = await dataSource.deleteComment(
              address, token, commentId, articleId);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 404);

          final call = dataSource.deleteComment;

          expect(() => call(address, token, commentId, articleId),
              throwsA(isA<ServerException>()));
        },
      );

      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.delete, 401);

          final call = dataSource.deleteComment;

          expect(() => call(address, token, commentId, articleId),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });

    group('patchComment', () {
      test(
        "????????? URL???????????? PATCH ??????// application/json, token ?????? ??????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          dataSource.patchComment(address, token, commentId, comment);

          verify(mockHttpClient.patch(
              Uri.parse("$baseUrl/$address/article/comment"),
              headers: {'Content-Type': 'application/json', 'token': token},
              body: {'id': '$commentId', 'content': '$comment'}));
        },
      );

      test(
        "response code??? 200?????? ?????? ?????? ????????? ????????? ?????????",
        () async {
          setUpMockHttpClientWithRequestBodySuccess(
              mockHttpClient.patch, 200, "empty_response.json");

          final result =
              await dataSource.patchComment(address, token, commentId, comment);

          expect(result, equals(tEmptyResponseModel));
        },
      );

      test(
        "response code??? 404 ?????? ?????? code??? ??? Server Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 404);

          final call = dataSource.patchComment;

          expect(() => call(address, token, commentId, comment),
              throwsA(isA<ServerException>()));
        },
      );

      test(
        "response code??? 401 ??? ???, Authorization Exception ??????",
        () async {
          setUpMockHttpClientWithRequestBodyFailure(mockHttpClient.patch, 401);

          final call = dataSource.patchComment;

          expect(() => call(address, token, commentId, comment),
              throwsA(isA<AuthorizationException>()));
        },
      );
    });
  });
}
