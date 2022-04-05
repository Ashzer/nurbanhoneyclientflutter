import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/editor_repository/delete_images.dart';

import 'delete_images_test.mocks.dart';

@GenerateMocks([EditorRepository])
void main() {
  final mockEditorRepository = MockEditorRepository();
  final deleteImages = DeleteImages(mockEditorRepository);
  final tEmptyResponse = EmptyResponse("result");

  test(
    "Editor Repository에 현재 글에서 업로드 된 이미지 전체 삭제 요청",
    () async {
      when(mockEditorRepository.deleteImages(any, any, any))
          .thenAnswer((_) async => Right(tEmptyResponse));

      final result = await deleteImages(
          const Params(address: "address", token: "token", uuid: "uuid"));

      expect(result, Right(tEmptyResponse));
      verify(mockEditorRepository.deleteImages("address", "token", "uuid"));
      verifyNoMoreInteractions(mockEditorRepository);
    },
  );

  test(
    "DeleteImages Params is Equatable",
    () async {
      expect(Params(address: "address", token: "token", uuid: "uuid"),
          Params(address: "address", token: "token", uuid: "uuid"));
    },
  );
}
