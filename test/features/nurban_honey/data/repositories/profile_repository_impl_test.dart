import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/profile_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_article_model/profile_article_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_model/profile_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/profile_repository_impl.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_article/profile_article.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';

import 'profile_repository_impl_test.mocks.dart';

@GenerateMocks([NetworkStatus, ProfileRemoteDataSource])
void main() {
  late MockNetworkStatus mockNetworkStatus;
  late MockProfileRemoteDataSource mockProfileRemoteDataSource;
  late ProfileRepository repository;
  setUp(() {
    mockNetworkStatus = MockNetworkStatus();
    mockProfileRemoteDataSource = MockProfileRemoteDataSource();
    repository =
        ProfileRepositoryImpl(mockNetworkStatus, mockProfileRemoteDataSource);
  });

  group('Profile repository tests :', () {
    final tEmptyResponseModel = EmptyResponseModel("result");
    final tEmptyResponse = tEmptyResponseModel.toEmptyResponse();

    group('getProfile', () {
      final tProfileModel = ProfileModel(1, "loginType", "badge", "nickname",
          "description", 2, ["insigniaShow"], ["insigniaOwn"], 3, 4);
      final tProfile = tProfileModel.toProfile();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockProfileRemoteDataSource.getProfile(any))
              .thenAnswer((_) async => tProfileModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.getProfile("token");

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
            when(mockProfileRemoteDataSource.getProfile(any))
                .thenAnswer((_) async => tProfileModel);

            final profile = await repository.getProfile("token");

            verify(mockProfileRemoteDataSource.getProfile("token"));
            expect(profile, Right(tProfile));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockProfileRemoteDataSource.getProfile(any))
                .thenThrow(ServerException());

            final profile = await repository.getProfile("token");

            verify(mockProfileRemoteDataSource.getProfile("token"));
            expect(profile, Left(ServerFailure()));
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
            final profile = await repository.getProfile("token");

            verifyNever(mockProfileRemoteDataSource.getProfile(any));
            expect(profile, Left(NetworkFailure()));
          },
        );
      });
    });

    group('getProfileArticles', () {
      final tProfileArticleModels = [
        ProfileArticleModel(1, "thumbnail1", "title1", 2, "createdAt1",
            BoardInfoModel(3, "name1", "address1")),
        ProfileArticleModel(4, "thumbnail2", "title2", 5, "createdAt2",
            BoardInfoModel(6, "name2", "address2"))
      ];
      final tProfileArticles = tProfileArticleModels.toProfileArticles();

      test(
        "네트워크 연결 확인",
        () async {
          when(mockProfileRemoteDataSource.getProfileArticles(any, any, any))
              .thenAnswer((_) async => tProfileArticleModels);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.getProfileArticles("token", 0, 10);

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
            when(mockProfileRemoteDataSource.getProfileArticles(any, any, any))
                .thenAnswer((_) async => tProfileArticleModels);

            final profileArticles =
                await repository.getProfileArticles("token", 0, 10);

            verify(
                mockProfileRemoteDataSource.getProfileArticles("token", 0, 10));

            expect(profileArticles.runtimeType,
                Right<Failure, List<ProfileArticle>>);
            profileArticles.fold(
                (l) => null, (r) => expect(r, tProfileArticles));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockProfileRemoteDataSource.getProfileArticles(any, any, any))
                .thenThrow(ServerException());

            final profileArticles =
                await repository.getProfileArticles("token", 0, 10);

            verify(
                mockProfileRemoteDataSource.getProfileArticles("token", 0, 10));
            expect(profileArticles, Left(ServerFailure()));
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
            final profileArticles =
                await repository.getProfileArticles("token", 0, 10);

            verifyNever(
                mockProfileRemoteDataSource.getProfileArticles(any, any, any));
            expect(profileArticles, Left(NetworkFailure()));
          },
        );
      });
    });

    group('getProfileComments', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
          //TODO: Action
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
            //TODO:
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            //TODO:
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
            //TODO:
          },
        );
      });
    });
  });
}