import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/editor_repository/post_nurban_article.dart';
import 'post_nurban_article_test.mocks.dart';

@GenerateMocks([EditorRepository])
void main() {
  final mockEditorRepository = MockEditorRepository();
  final postNurbanArticle = PostNurbanArticle(mockEditorRepository);

  const tEmtpyResponse = EmptyResponse("OK");

  test(
    "Editor Repository로 Nurban article 등록 요청",
    () async {
      when(mockEditorRepository.postNurbanArticle(
              "address", "token", "title", "uuid", "lossCut", null, "content"))
          .thenAnswer((_) async => const Right(tEmtpyResponse));

      final result = await postNurbanArticle(const Params(
          address: "address",
          token: "token",
          title: "title",
          uuid: "uuid",
          lossCut: "lossCut",
          thumbnail: null,
          content: "content"));

      expect(result, const Right(tEmtpyResponse));
      verify(mockEditorRepository.postNurbanArticle(
          "address", "token", "title", "uuid", "lossCut", null, "content"));
    },
  );

  test(
    "PostNurbanArticle Params is Equatable",
    () async {
      expect(
          Params(
              address: "address",
              token: "token",
              title: "title",
              uuid: "uuid",
              lossCut: "lossCut",
              thumbnail: null,
              content: "content"),
          Params(
              address: "address",
              token: "token",
              title: "title",
              uuid: "uuid",
              lossCut: "lossCut",
              thumbnail: null,
              content: "content"));
    },
  );
}
