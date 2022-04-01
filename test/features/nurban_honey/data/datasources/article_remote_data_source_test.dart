import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/article_remote_data_source.dart';

import 'article_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  ArticleRemoteDataSourceImpl dataSource;
  MockClient mockHttpClient;
  setUp(() {
    mockHttpClient = MockClient();
    dataSource = ArticleRemoteDataSourceImpl(client: mockHttpClient);
  });
}
