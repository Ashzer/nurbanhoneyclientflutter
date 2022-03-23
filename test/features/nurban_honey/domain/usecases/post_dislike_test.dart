import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/post_dislike.dart';

import 'get_articles_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final postDislike = PostDislike(mockArticleRepository);

  final tEmptyResponse = EmptyResponse("OK");

  test(
    "Article Repository로 싫어요 요청",
    () async {
      when(mockArticleRepository.postDislike(
              address: anyNamed("address"),
              token: anyNamed("token"),
              articleId: anyNamed("articleId")))
          .thenAnswer((_) async => Right(tEmptyResponse));

      final result = await postDislike(
          Params(address: "address", token: "token", articleId: 1));

      expect(result, Right(tEmptyResponse));
      verify(mockArticleRepository.postDislike(
          address: "address", token: "token", articleId: 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );
}
