import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/delete_article_comment.dart';

import 'delete_article_comment_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final deleteArticleComment = DeleteArticleComment(mockArticleRepository);

  const tEmptyResponse = EmptyResponse("OK");

  test(
    "Article Repository로 댓글 삭제 요청",
    () async {
      when(mockArticleRepository.deleteComment("address", "token", 1, 1))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result = await deleteArticleComment(const Params(
          address: "address", token: "token", commentId: 1, articleId: 1));

      expect(result, const Right(tEmptyResponse));
      verify(mockArticleRepository.deleteComment("address", "token", 1, 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );

  test(
    "DeleteArticleComment Params is Equatable",
    () async {
      expect(
          Params(
              address: "address", token: "token", commentId: 1, articleId: 1),
          Params(
              address: "address", token: "token", commentId: 1, articleId: 1));
    },
  );
}
