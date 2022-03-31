import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/profile_repository/request_sign_out.dart';
import 'request_sign_out_test.mocks.dart';

@GenerateMocks([ProfileRepository])
void main() {
  final mockProfileRepository = MockProfileRepository();
  final requestSignOut = RequestSignOut(mockProfileRepository);

  const tEmptyResponse = EmptyResponse("OK");

  test(
    "Profile Repository에 로그아웃 요청",
    () async {
      when(mockProfileRepository.requestSignOut(token: "token", userId: 0))
          .thenAnswer((_) async => const Right(tEmptyResponse));

      final result =
          await requestSignOut(const Params(token: "token", userId: 0));

      expect(result, const Right(tEmptyResponse));
      verify(mockProfileRepository.requestSignOut(token: "token", userId: 0));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );

  test(
    "RequestSignOut Params is Equatable",
    () async {
      expect(const Params(token: "token", userId: 0),
          const Params(token: "token", userId: 0));
    },
  );
}
