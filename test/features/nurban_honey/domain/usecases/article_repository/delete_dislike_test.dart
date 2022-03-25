import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/delete_dislike.dart';

import 'delete_dislike_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final deleteDislike = DeleteDislike(mockArticleRepository);
  final tEmptyResponse = EmptyResponse("OK");

  test(
    "Article Repository로 싫어요 취소 요청",
    () async {
      when(mockArticleRepository.deleteDislike(
              address: "address", token: "token", articleId: 1))
          .thenAnswer((_) async => Right(tEmptyResponse));

      final result = await deleteDislike(
          const Params(address: "address", token: "token", articleId: 1));

      expect(result, Right(tEmptyResponse));
      verify(mockArticleRepository.deleteDislike(
          address: "address", token: "token", articleId: 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );

  test(
    "DeleteDislike Params is Equatable",
    () async {
      expect(Params(address: "address", token: "token", articleId: 1),
          Params(address: "address", token: "token", articleId: 1));
    },
  );
}
