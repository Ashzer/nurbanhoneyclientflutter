import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/post_article_comment.dart';

import 'post_article_comment_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final postArticleComment = PostArticleComment(mockArticleRepository);

  final tEmptyResponse = EmptyResponse("OK");

  test(
    "Article Repository로 댓글 작성",
    () async {
      when(mockArticleRepository.postComment(
              address: "address",
              token: "token",
              comment: "comment",
              articleId: 1))
          .thenAnswer((_) async => Right(tEmptyResponse));

      final result = await postArticleComment(const Params(
          address: "address",
          token: "token",
          comment: "comment",
          articleId: 1));

      expect(result, Right(tEmptyResponse));
      verify(mockArticleRepository.postComment(
          address: "address",
          token: "token",
          comment: "comment",
          articleId: 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );
}
