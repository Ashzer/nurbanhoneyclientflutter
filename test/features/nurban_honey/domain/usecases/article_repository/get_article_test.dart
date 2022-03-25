import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_detail/article_detail.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/get_article.dart';

import 'get_article_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final tArticle = ArticleDetail(
      1,
      "uuid",
      "thumbnail",
      "title",
      "lossCut",
      "content",
      "inquires",
      "comments",
      "likes",
      "dislikes",
      "date",
      1,
      "badge",
      "nickname",
      ["insignias"],
      "myRating");

  final mockArticleRepository = MockArticleRepository();
  final getArticle = GetArticle(mockArticleRepository);

  test(
    "Article Repository에서 Article을 하나 가져온다",
    () async {
      when(mockArticleRepository.getArticle(
              address: "address", articleId: 1, token: "token"))
          .thenAnswer((_) async => Right(tArticle));

      final result = await getArticle(
          const Params(address: "address", token: "token", articleId: 1));

      expect(result, Right(tArticle));
      verify(mockArticleRepository.getArticle(
          address: "address", token: "token", articleId: 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );
}
