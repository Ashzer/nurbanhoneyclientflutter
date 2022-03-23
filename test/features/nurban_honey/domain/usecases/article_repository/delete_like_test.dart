import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/delete_like.dart';

import 'delete_like_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final cancelLike = DeleteLike(mockArticleRepository);

  final tEmptyResponse = EmptyResponse("OK");

  test(
    "Article Repository로 좋아요 취소 요청",
    () async {
      when(mockArticleRepository.deleteLike(
              address: "address", token: "token", articleId: 1))
          .thenAnswer((_) async => Right(tEmptyResponse));

      final result = await cancelLike(
          Params(address: "address", token: "token", articleId: 1));
      expect(result, Right(tEmptyResponse));
      verify(mockArticleRepository.deleteLike(
          address: "address", token: "token", articleId: 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );
}
