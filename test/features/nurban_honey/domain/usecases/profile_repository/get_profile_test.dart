import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile/profile.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/profile_repository/get_profile.dart';
import 'get_profile_test.mocks.dart';

@GenerateMocks([ProfileRepository])
void main() {
  final mockProfileRepository = MockProfileRepository();
  final getProfile = GetProfile(mockProfileRepository);

  final tProfile = Profile(1, "loginType", "badge", "nickname", "description",
      "point", ["insigniaShow"], ["insigniaOwn"], "myArticles", "myComments");

  test(
    "Profile Repository에서 Profile 가져옴",
    () async {
      when(mockProfileRepository.getProfile(token: "token"))
          .thenAnswer((_) async => Right(tProfile));

      final result = await getProfile(Params(token: "token"));

      expect(result, Right(tProfile));
      verify(mockProfileRepository.getProfile(token: "token"));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );
}
