import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/editor_repository/put_nurban_article.dart';
import 'put_nurban_article_test.mocks.dart';

@GenerateMocks([EditorRepository])
void main() {
  final mockEditorRepository = MockEditorRepository();
  final putNurbanArticle = PutNurbanArticle(mockEditorRepository);

  const tEmptyResponse = EmptyResponse("OK");

  test(
    "Editor Repository로 nurban article 수정 요청",
    () async {
      when(mockEditorRepository.putNurbanArticle(
              any, any, any, any, any, any, any))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result = await putNurbanArticle(const Params(
          address: "address",
          token: "token",
          articleId: 1,
          thumbnail: null,
          title: "title",
          lossCut: "lossCut",
          content: "content"));

      expect(result, const Right(tEmptyResponse));
      verify(mockEditorRepository.putNurbanArticle(
          "address", "token", 1, null, "title", "lossCut", "content"));
      verifyNoMoreInteractions(mockEditorRepository);
    },
  );

  test(
    "PutNurbanArticle Params is Equatable",
    () async {
      expect(
          Params(
              address: "address",
              token: "token",
              articleId: 1,
              thumbnail: null,
              title: "title",
              lossCut: "lossCut",
              content: "content"),
          Params(
              address: "address",
              token: "token",
              articleId: 1,
              thumbnail: null,
              title: "title",
              lossCut: "lossCut",
              content: "content"));
    },
  );
}
