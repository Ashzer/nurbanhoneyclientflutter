import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_comment/profile_comment.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/profile_repository/get_profile_comments.dart';
import 'get_profile_comments_test.mocks.dart';

@GenerateMocks([ProfileRepository])
void main() {
  final mockProfileRepository = MockProfileRepository();
  final getProfileComments = GetProfileComments(mockProfileRepository);

  final tProfileComments = [
    const ProfileComment(
        1, "comment", 1, "createAt", 1, "boardName", "boardAddress", "title"),
    const ProfileComment(
        2, "comment", 2, "createAt", 2, "boardName", "boardAddress", "title"),
  ];

  test(
    "Profile Repository에서 본인 댓글 가져오기",
    () async {
      when(mockProfileRepository.getProfileComments("token", 0, 10))
          .thenAnswer((_) async => Right(tProfileComments));

      final result = await getProfileComments(
          const Params(token: "token", offset: 0, limit: 10));

      expect(result, Right(tProfileComments));
      verify(mockProfileRepository.getProfileComments("token", 0, 10));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );

  test(
    "GetProfileComments Params is Equatable",
    () async {
      expect(Params(token: "token", offset: 0, limit: 10),
          Params(token: "token", offset: 0, limit: 10));
    },
  );
}
