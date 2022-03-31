import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/put_article_comment.dart';

import 'put_article_comment_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final putArticleComment = PutArticleComment(mockArticleRepository);

  const tEmptyResponse = EmptyResponse("OK");

  test(
    "Article Repository로 댓글 수정 요청",
    () async {
      when(mockArticleRepository.putComment("address", "token", 1, "comment"))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result = await putArticleComment(const Params(
          address: "address",
          token: "token",
          commentId: 1,
          comment: "comment"));

      expect(result, const Right(tEmptyResponse));
      verify(
          mockArticleRepository.putComment("address", "token", 1, "comment"));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );

  test(
    "PutArticleComment Params is Equatable",
    () async {
      expect(
          Params(
              address: "address",
              token: "token",
              commentId: 1,
              comment: "comment"),
          Params(
              address: "address",
              token: "token",
              commentId: 1,
              comment: "comment"));
    },
  );
}
