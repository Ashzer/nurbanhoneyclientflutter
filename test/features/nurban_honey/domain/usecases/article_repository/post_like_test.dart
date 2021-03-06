import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/post_like.dart';

import 'post_like_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final postLike = PostLike(mockArticleRepository);
  const tEmptyResponse = EmptyResponse("OK");
  test(
    "Article Repository로 좋아요 요청",
    () async {
      when(mockArticleRepository.postLike("address", "token", 1))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result = await postLike(
          const Params(address: "address", token: "token", articleId: 1));

      expect(result, const Right(tEmptyResponse));
      verify(mockArticleRepository.postLike("address", "token", 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );

  test(
    "PostLike Params is Equatable",
    () async {
      expect(Params(address: "address", token: "token", articleId: 1),
          Params(address: "address", token: "token", articleId: 1));
    },
  );
}
