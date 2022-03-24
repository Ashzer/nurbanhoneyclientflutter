import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/login_repository/get_nurban_token.dart';

import 'get_nurban_token_test.mocks.dart';

@GenerateMocks([LoginRepository])
void main() {
  final mockLoginRepository = MockLoginRepository();
  final getNurbanToken = GetNurbanToken(mockLoginRepository);

  const tNurbanToken = NurbanToken("token", 1);

  test(
    "Login Repository에서 Third Party 키값으로 Nurban 토큰 값 가져오기",
    () async {
      when(mockLoginRepository.getNurbanToken(
              loginType: "loginType", thirdPartyLoginKey: "thirdPartyLoginKey"))
          .thenAnswer((_) async => const Right(tNurbanToken));

      final result = await getNurbanToken(const Params(
          loginType: "loginType", thirdPartyLoginKey: "thirdPartyLoginKey"));

      expect(result, const Right(tNurbanToken));
      verify(mockLoginRepository.getNurbanToken(
          loginType: "loginType", thirdPartyLoginKey: "thirdPartyLoginKey"));
      verifyNoMoreInteractions(mockLoginRepository);
    },
  );
}
