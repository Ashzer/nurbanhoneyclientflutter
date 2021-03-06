import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/get_article_comments.dart';

import 'delete_article_comment_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final getArticleComments = GetArticleComments(mockArticleRepository);

  final tArticleComments = [
    ArticleComment(1, "comment", 1, 1, "badge", "nickname", ["insignia"]),
    ArticleComment(2, "comment", 2, 2, "badge", "nickname", ["insignia"])
  ];

  test(
    "Article Repository에서 Comment 리스트 가져옴",
    () async {
      when(mockArticleRepository.getComments("address", 1, 0, 10))
          .thenAnswer((_) async => Right(tArticleComments));

      final result = await getArticleComments(
          const Params(address: "address", articleId: 1, offset: 0, limit: 10));

      expect(result, Right(tArticleComments));
      verify(mockArticleRepository.getComments("address", 1, 0, 10));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );

  test(
    "GetArticleComments Params is Equatable",
    () async {
      expect(Params(address: "address", articleId: 1, offset: 0, limit: 10),
          Params(address: "address", articleId: 1, offset: 0, limit: 10));
    },
  );
}
