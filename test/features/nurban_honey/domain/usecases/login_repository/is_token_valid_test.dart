import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/TokenStatus/token_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/login_repository/is_token_valid.dart';

import 'is_token_valid_test.mocks.dart';

@GenerateMocks([LoginRepository])
void main() {
  final mockLoginRepository = MockLoginRepository();
  final isTokenValid = IsTokenValid(mockLoginRepository);

  final tTokenStatus = TokenStatus(true);

  test(
    "Login Repository로 token 유효성 검사 요청",
    () async {
      when(mockLoginRepository.isTokenValid(nurbanToken: "nurbanToken"))
          .thenAnswer((_) async => Right(tTokenStatus));

      final result = await isTokenValid(Params(nurbanToken: "nurbanToken"));

      expect(result, Right(tTokenStatus));
      verify(mockLoginRepository.isTokenValid(nurbanToken: "nurbanToken"));
      verifyNoMoreInteractions(mockLoginRepository);
    },
  );
}
