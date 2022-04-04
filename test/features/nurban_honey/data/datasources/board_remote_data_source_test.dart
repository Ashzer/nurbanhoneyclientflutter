import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/board_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'board_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late BoardRemoteDataSource dataSource;
  late MockClient mockHttpClient;
  setUp(() {
    mockHttpClient = MockClient();
    dataSource = BoardRemoteDataSourceImpl(client: mockHttpClient);
  });

  const String baseUrl = "http://3.37.155.214:8128/board";

  group('Board remote data source tests :', () {
    void setUpMockHttpClientSuccess(
        Function method, int responseCode, String fileName) {
      when(method(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture(fileName), responseCode));
    }

    void setUpMockHttpClientFailure(Function method, int responseCode) {
      when(method(any, headers: anyNamed("headers"))).thenAnswer(
          (_) async => http.Response("Server Error occurred", responseCode));
    }

    group('getBoards', () {
      final List<dynamic> decode = jsonDecode(fixture("board_infos.json"));
      final tBoardInfoModels =
          decode.map((e) => BoardInfoModel.fromJson(e)).toList();
      test(
        "적절한 URL생성해서 GET 요청// application/json 헤더 포함",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "board_infos.json");

          dataSource.getBoards();

          verify(mockHttpClient.get(Uri.parse(baseUrl),
              headers: {'Content-Type': 'application/json'}));
        },
      );

      test(
        "response code가 200이면 board 리스트가 서버로부터 반환됨",
        () async {
          setUpMockHttpClientSuccess(
              mockHttpClient.get, 200, "board_infos.json");

          final result = await dataSource.getBoards();

          expect(result, equals(tBoardInfoModels));
        },
      );

      test(
        "response code가 404 혹은 다른 code일 때 Server Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 404);

          final call = dataSource.getBoards;

          expect(() => call(), throwsA(isA<ServerException>()));
        },
      );
      test(
        "response code가 401 일 때, Authorization Exception 반환",
        () async {
          setUpMockHttpClientFailure(mockHttpClient.get, 401);

          final call = dataSource.getBoards;

          expect(() => call(), throwsA(isA<AuthorizationException>()));
        },
      );
    });
  });
}
