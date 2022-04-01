import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/article_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model/article_item_model.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'article_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late ArticleRemoteDataSourceImpl dataSource;
  late MockClient mockHttpClient;
  setUp(() {
    mockHttpClient = MockClient();
    dataSource = ArticleRemoteDataSourceImpl(client: mockHttpClient);
  });
  const String baseUrl = "http://3.37.155.214:8128/board";
  group('Article remote data source tests:', () {
    const String address = "address";
    const String token = "token";
    const flag = 0;
    const offset = 0;
    const limit = 10;
    group('getArticles', () {
      final List<dynamic> decode = jsonDecode(fixture("article_items.json"));
      final tArticleItemModels =
          decode.map((e) => ArticleItemModel.fromJson(e)).toList();
      test(
        "GET 요청으로 서버에서 Article 리스트 가져옴// flag(정렬 방식) , offset(시작 글번호) , limit(가져올 글 갯수) , application/json 헤더 포함",
        () async {
          when(mockHttpClient.get(any, headers: anyNamed('headers')))
              .thenAnswer((_) async =>
                  http.Response(fixture("article_items.json"), 200));

          dataSource.getArticles(address, flag, offset, limit);

          verify(mockHttpClient.get(
              Uri.parse(
                  "$baseUrl/$address?flag=$flag&offset=$offset&limit=$limit"),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code가 200이면 article 리스트가 서버로부터 반환됨",
        () async {
          when(mockHttpClient.get(any, headers: anyNamed('headers')))
              .thenAnswer((_) async =>
                  http.Response(fixture("article_items.json"), 200));

          final result =
              await dataSource.getArticles(address, flag, offset, limit);

          expect(result, equals(tArticleItemModels));
        },
      );
    });
    //TODO: Token(Unathorized Error 해결하고 돌아옴) Error처리부터 시작
  });
}
