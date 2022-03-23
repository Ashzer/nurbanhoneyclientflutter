import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/login_repository/get_nurban_token.dart';

import 'get_nurban_token_test.mocks.dart';

@GenerateMocks([LoginRepository])
void main() {
  final mockLogininRepository = MockLoginRepository();
  final getNurbanToken = GetNurbanToken(mockLogininRepository);

  final tNurbanToken = NurbanToken("token", 1);

  test(
    "Login Repository에서 Third Party 키값으로 Nurban 토큰 값 가져오기",
    () async {
      when(mockLogininRepository.getNurbanToken(
              loginType: "loginType", thirdPartyLoginKey: "thirdPartyLoginKey"))
          .thenAnswer((_) async => Right(tNurbanToken));

      final result = await getNurbanToken(Params(
          loginType: "loginType", thirdPartyLoginKey: "thirdPartyLoginKey"));

      expect(result, Right(tNurbanToken));
      verify(mockLogininRepository.getNurbanToken(
          loginType: "loginType", thirdPartyLoginKey: "thirdPartyLoginKey"));
      verifyNoMoreInteractions(mockLogininRepository);
    },
  );
}
