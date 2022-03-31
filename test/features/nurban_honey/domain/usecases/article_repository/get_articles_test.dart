import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_item/article_item.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/get_articles.dart';

import 'get_articles_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final tArticleItemList = [
    ArticleItem(1, "thumbnail", "title", "1", 1, "badge", "nickname",
        ["insignia 1", "insignia 2"]),
    ArticleItem(2, "thumbnail", "title", "1", 2, "badge", "nickname",
        ["insignia 1", "insignia 2"])
  ];
  final mockArticleRepository = MockArticleRepository();
  final getArticles = GetArticles(mockArticleRepository);

  test(
    "Article Repository에서 Article리스트를 가져온다",
    () async {
      when(mockArticleRepository.getArticles("address", 0, 0, 10))
          .thenAnswer((_) async => Right(tArticleItemList));

      final result = await getArticles(
          const Params(address: "address", flag: 0, offset: 0, limit: 10));

      expect(result, Right(tArticleItemList));
      verify(mockArticleRepository.getArticles("address", 0, 0, 10));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );

  test(
    "GetArticles Param Equatable",
    () async {
      expect(Params(address: "address", flag: 0, offset: 0, limit: 10),
          Params(address: "address", flag: 0, offset: 0, limit: 10));
    },
  );
}
