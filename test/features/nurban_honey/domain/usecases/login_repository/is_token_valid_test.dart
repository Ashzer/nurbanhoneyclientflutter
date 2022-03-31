import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/token_status/token_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/login_repository/is_token_valid.dart';

import 'is_token_valid_test.mocks.dart';

@GenerateMocks([LoginRepository])
void main() {
  final mockLoginRepository = MockLoginRepository();
  final isTokenValid = IsTokenValid(mockLoginRepository);

  const tTokenStatus = TokenStatus(true);

  test(
    "Login Repository로 token 유효성 검사 요청",
    () async {
      when(mockLoginRepository.isTokenValid(nurbanToken: "nurbanToken"))
          .thenAnswer((_) async => const Right(tTokenStatus));

      final result =
          await isTokenValid(const Params(nurbanToken: "nurbanToken"));

      expect(result, const Right(tTokenStatus));
      verify(mockLoginRepository.isTokenValid(nurbanToken: "nurbanToken"));
      verifyNoMoreInteractions(mockLoginRepository);
    },
  );

  test(
    "IsTokenValid Params is Equatable",
    () async {
      expect(const Params(nurbanToken: "nurbanToken"),
          const Params(nurbanToken: "nurbanToken"));
    },
  );
}
