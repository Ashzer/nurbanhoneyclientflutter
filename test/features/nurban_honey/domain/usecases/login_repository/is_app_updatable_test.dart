import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/app_version/app_version.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/login_repository/is_app_updatable.dart';

import 'is_app_updatable_test.mocks.dart';

@GenerateMocks([LoginRepository])
void main() {
  final mockLoginRepository = MockLoginRepository();
  final isAppUpdatable = IsAppUpdatable(mockLoginRepository);

  const tAppVersion = AppVersion("version", true);

  test(
    "Login Repository에 어플 버전&업데이트 확인",
    () async {
      when(mockLoginRepository.isAppUpdatable(appName: "nurbanhoney"))
          .thenAnswer((_) async => const Right(tAppVersion));

      final result = await isAppUpdatable(const Params(appName: "nurbanhoney"));

      expect(result, const Right(tAppVersion));
      verify(mockLoginRepository.isAppUpdatable(appName: "nurbanhoney"));
      verifyNoMoreInteractions(mockLoginRepository);
    },
  );

  test(
    "IsAppUpdatable Params is Equatable",
    () async {
      expect(const Params(appName: "nurbanhoney"),
          const Params(appName: "nurbanhoney"));
    },
  );
}
