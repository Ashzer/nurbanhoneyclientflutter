import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/ariticle/article_ratings/article_ratings.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/get_article_ratings.dart';

import 'get_article_ratings_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final getArticleRatings = GetArticleRatings(mockArticleRepository);

  final tArticleRatings = ArticleRatings("likes", "dislikes", "myRating");

  test(
    "Article Repository에서 좋아요 싫어요 내 선택을 가져온다",
    () async {
      when(mockArticleRepository.getArticleRatings(
              address: "address", token: "token", articleId: 1))
          .thenAnswer((_) async => Right(tArticleRatings));

      final result = await getArticleRatings(
          Params(address: "address", token: "token", articleId: 1));

      expect(result, Right(tArticleRatings));
      verify(mockArticleRepository.getArticleRatings(
          address: "address", token: "token", articleId: 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );
}