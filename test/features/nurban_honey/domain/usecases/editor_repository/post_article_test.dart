import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/editor_repository/post_article.dart';
import 'post_article_test.mocks.dart';

@GenerateMocks([EditorRepository])
void main() {
  final mockEditorRepository = MockEditorRepository();
  final postArticle = PostArticle(mockEditorRepository);

  const tEmptyResponse = EmptyResponse("OK");

  test(
    "Editor Repository로 article 등록 요청",
    () async {
      when(mockEditorRepository.postArticle(
              "address", "token", "title", "uuid", null, "content"))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result = await postArticle(const Params(
          address: "address",
          token: "token",
          title: "title",
          uuid: "uuid",
          thumbnail: null,
          content: "content"));

      expect(result, const Right(tEmptyResponse));
      verify(mockEditorRepository.postArticle(
          "address", "token", "title", "uuid", null, "content"));
      verifyNoMoreInteractions(mockEditorRepository);
    },
  );

  test(
    "PostArticle Params is Equatable",
    () async {
      expect(
          Params(
              address: "address",
              token: "token",
              title: "title",
              uuid: "uuid",
              thumbnail: null,
              content: "content"),
          Params(
              address: "address",
              token: "token",
              title: "title",
              uuid: "uuid",
              thumbnail: null,
              content: "content"));
    },
  );
}
