import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/get_comment.dart';

import 'get_comment_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRespository = MockArticleRepository();
  final getComment = GetComment(mockArticleRespository);

  final tArticleComment =
      ArticleComment(1, "comment", 1, 1, "badge", "nickname", ["insignias"]);

  test(
    "Article Repository에서 comment 하나 가져온다",
    () async {
      when(mockArticleRespository.getComment("test", 1))
          .thenAnswer((_) async => Right(tArticleComment));

      final result =
          await getComment(const Params(address: "test", commentId: 1));

      expect(result, Right(tArticleComment));
      verify(mockArticleRespository.getComment("test", 1));
      verifyNoMoreInteractions(mockArticleRespository);
    },
  );

  test(
    "GetComment Params is Equatable",
    () async {
      expect(Params(address: "test", commentId: 1),
          Params(address: "test", commentId: 1));
    },
  );
}
