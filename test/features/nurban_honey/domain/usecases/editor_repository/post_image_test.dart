import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/image_post_response/image_post_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/editor_repository/post_image.dart';
import 'post_image_test.mocks.dart';

@GenerateMocks([EditorRepository])
void main() {
  final mockEditorRepository = MockEditorRepository();
  final postImage = PostImage(mockEditorRepository);

  final tImagePostResponse = ImagePostResponse(Uri.parse("test"));

  test(
    "Editor Repository로 image 업로드 요청",
    () async {
      when(mockEditorRepository.postImage(
              "address", "token", "uuid", "imagePath"))
          .thenAnswer((_) async => Right(tImagePostResponse));

      final result = await postImage(const Params(
          address: "address",
          token: "token",
          uuid: "uuid",
          imagePath: "imagePath"));

      expect(result, Right(tImagePostResponse));
      verify(mockEditorRepository.postImage(
          "address", "token", "uuid", "imagePath"));
      verifyNoMoreInteractions(mockEditorRepository);
    },
  );

  test(
    "PostImage Params is Equatable",
    () async {
      expect(
          const Params(
              address: "address",
              token: "token",
              uuid: "uuid",
              imagePath: "imagePath"),
          const Params(
              address: "address",
              token: "token",
              uuid: "uuid",
              imagePath: "imagePath"));
    },
  );
}
