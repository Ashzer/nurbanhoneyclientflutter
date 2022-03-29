import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/profile_repository/edit_profile.dart';
import 'edit_profile_test.mocks.dart';

@GenerateMocks([ProfileRepository])
void main() {
  final mockProfileRepository = MockProfileRepository();
  final editProfile = EditProfile(mockProfileRepository);

  const tEmptyResponse = EmptyResponse("OK");

  test(
    "Profile Repository로 profile 수정 요청",
    () async {
      when(mockProfileRepository.editProfile(
              token: "token",
              nickname: "nickname",
              description: "description",
              insignias: ["insignia1"]))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result = await editProfile(const Params(
          token: "token",
          nickname: "nickname",
          description: "description",
          insignias: ["insignia1"]));

      expect(result, const Right(tEmptyResponse));
      verify(mockProfileRepository.editProfile(
          token: "token",
          nickname: "nickname",
          description: "description",
          insignias: ["insignia1"]));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );

  test(
    "EditProfile Params is Equatable",
    () async {
      expect(
          const Params(
              token: "token",
              nickname: "nickname",
              description: "description",
              insignias: ["insignia1"]),
          const Params(
              token: "token",
              nickname: "nickname",
              description: "description",
              insignias: ["insignia1"]));
    },
  );
}
