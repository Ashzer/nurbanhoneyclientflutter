import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/login_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/app_version_model/app_version_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/nurban_token_model/nurban_token_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/token_status/token_status_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/login_repository_impl.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/login_repository.dart';

import 'login_repository_impl_test.mocks.dart';

@GenerateMocks([NetworkStatus, LoginRemoteDataSource])
void main() {
  late MockNetworkStatus mockNetworkStatus;
  late MockLoginRemoteDataSource mockLoginRemoteDataSource;
  late LoginRepository repository;

  setUp(() {
    mockNetworkStatus = MockNetworkStatus();
    mockLoginRemoteDataSource = MockLoginRemoteDataSource();
    repository =
        LoginRepositoryImpl(mockNetworkStatus, mockLoginRemoteDataSource);
  });

  group('Login repository tests :', () {
    group('isAppUpdatable', () {
      final tAppVersionModel = AppVersionModel("appversion", true);
      final tAppVersion = tAppVersionModel.toAppVersion();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockLoginRemoteDataSource.isAppUpdatable(any))
              .thenAnswer((_) async => tAppVersionModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.isAppUpdatable("appName");

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });

        test(
          "정상 동작",
          () async {
            when(mockLoginRemoteDataSource.isAppUpdatable(any))
                .thenAnswer((_) async => tAppVersionModel);

            final appVersion = await repository.isAppUpdatable("appName");

            verify(mockLoginRemoteDataSource.isAppUpdatable("appName"));
            expect(appVersion, Right(tAppVersion));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockLoginRemoteDataSource.isAppUpdatable(any))
                .thenThrow(ServerException());

            final appVersion = await repository.isAppUpdatable("appName");

            verify(mockLoginRemoteDataSource.isAppUpdatable("appName"));
            expect(appVersion, Left(ServerFailure()));
          },
        );
      });

      group('=> 연결 안됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => false);
        });

        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {
            final appVersion = await repository.isAppUpdatable("appName");

            verifyNever(mockLoginRemoteDataSource.isAppUpdatable(any));
            expect(appVersion, Left(NetworkFailure()));
          },
        );
      });
    });

    group('getNurbanToken', () {
      final tNurbanTokenModel = NurbanTokenModel("token", 1);
      final tNurbanToken = tNurbanTokenModel.toNurbanToken();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockLoginRemoteDataSource.getNurbanToken(
                  "loginType", "thirdPartyLoginKey"))
              .thenAnswer((_) async => tNurbanTokenModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.getNurbanToken("loginType", "thirdPartyLoginKey");

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });

        test(
          "정상 동작",
          () async {
            when(mockLoginRemoteDataSource.getNurbanToken(
                    "loginType", "thirdPartyLoginKey"))
                .thenAnswer((_) async => tNurbanTokenModel);

            final nurbanToken = await repository.getNurbanToken(
                "loginType", "thirdPartyLoginKey");

            verify(mockLoginRemoteDataSource.getNurbanToken(
                "loginType", "thirdPartyLoginKey"));
            expect(nurbanToken, Right(tNurbanToken));
          },
        );
        test(
          "서버에서 로그인을 실패 했을 때 LoginFailure",
          () async {
            when(mockLoginRemoteDataSource.getNurbanToken(
                    "loginType", "thirdPartyLoginKey"))
                .thenThrow(LoginException());

            final nurbanToken = await repository.getNurbanToken(
                "loginType", "thirdPartyLoginKey");

            verify(mockLoginRemoteDataSource.getNurbanToken(
                "loginType", "thirdPartyLoginKey"));
            expect(nurbanToken, Left(LoginFailure()));
          },
        );
        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockLoginRemoteDataSource.getNurbanToken(
                    "loginType", "thirdPartyLoginKey"))
                .thenThrow(ServerException());

            final nurbanToken = await repository.getNurbanToken(
                "loginType", "thirdPartyLoginKey");

            verify(mockLoginRemoteDataSource.getNurbanToken(
                "loginType", "thirdPartyLoginKey"));
            expect(nurbanToken, Left(ServerFailure()));
          },
        );
      });

      group('=> 연결 안됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => false);
        });

        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {
            final nurbanToken = await repository.getNurbanToken(
                "loginType", "thirdPartyLoginKey");

            verifyNever(mockLoginRemoteDataSource.getNurbanToken(any, any));
            expect(nurbanToken, Left(NetworkFailure()));
          },
        );
      });
    });

    group('isTokenValid', () {
      final tTokenStatusModel = TokenStatusModel(true);
      final tTokenStatus = tTokenStatusModel.toTokenStatus();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockLoginRemoteDataSource.isTokenValid(any))
              .thenAnswer((_) async => tTokenStatusModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.isTokenValid("nurbanToken");

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });

        test(
          "정상 동작",
          () async {
            when(mockLoginRemoteDataSource.isTokenValid(any))
                .thenAnswer((_) async => tTokenStatusModel);

            final tokenStatus = await repository.isTokenValid("nurbanToken");

            verify(mockLoginRemoteDataSource.isTokenValid("nurbanToken"));
            expect(tokenStatus, Right(tTokenStatus));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockLoginRemoteDataSource.isTokenValid(any))
                .thenThrow(ServerException());

            final tokenStatus = await repository.isTokenValid("nurbanToken");

            verify(mockLoginRemoteDataSource.isTokenValid("nurbanToken"));
            expect(tokenStatus, Left(ServerFailure()));
          },
        );
      });

      group('=> 연결 안됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => false);
        });

        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {
            final tokenStatus = await repository.isTokenValid("nurbanToken");

            verifyNever(mockLoginRemoteDataSource.isTokenValid(any));
            expect(tokenStatus, Left(NetworkFailure()));
          },
        );
      });
    });
  });
}
