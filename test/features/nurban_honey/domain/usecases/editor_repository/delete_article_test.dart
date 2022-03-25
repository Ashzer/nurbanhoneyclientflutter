import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/editor_repository/delete_article.dart';
import 'delete_article_test.mocks.dart';

@GenerateMocks([EditorRepository])
void main() {
  final mockEditorRepository = MockEditorRepository();
  final deleteArticle = DeleteArticle(mockEditorRepository);

  final tEmptyResponse = EmptyResponse("OK");

  test(
    "Editor Repository로 article 삭제 요청",
    () async {
      when(mockEditorRepository.deleteArticle(
              address: "address", token: "token", articleId: 1, uuid: "uuid"))
          .thenAnswer((_) async => Right(tEmptyResponse));

      final result = await deleteArticle(const Params(
          address: "address", token: "token", articleId: 1, uuid: "uuid"));

      expect(result, Right(tEmptyResponse));
      verify(mockEditorRepository.deleteArticle(
          address: "address", token: "token", articleId: 1, uuid: "uuid"));
      verifyNoMoreInteractions(mockEditorRepository);
    },
  );

  test(
    "DeleteArticle Params is Equatable",
    () async {
      expect(
          Params(
              address: "address", token: "token", articleId: 1, uuid: "uuid"),
          Params(
              address: "address", token: "token", articleId: 1, uuid: "uuid"));
    },
  );
}
