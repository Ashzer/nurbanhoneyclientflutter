import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/article_repository/post_dislike.dart';

import 'post_dislike_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  final mockArticleRepository = MockArticleRepository();
  final postDislike = PostDislike(mockArticleRepository);

  const tEmptyResponse = EmptyResponse("OK");

  test(
    "Article Repository로 싫어요 요청",
    () async {
      when(mockArticleRepository.postDislike("address", "token", 1))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result = await postDislike(
          const Params(address: "address", token: "token", articleId: 1));

      expect(result, const Right(tEmptyResponse));
      verify(mockArticleRepository.postDislike("address", "token", 1));
      verifyNoMoreInteractions(mockArticleRepository);
    },
  );

  test(
    "PostDislike Params is Equatable",
    () async {
      expect(const Params(address: "address", token: "token", articleId: 1),
          const Params(address: "address", token: "token", articleId: 1));
    },
  );
}
