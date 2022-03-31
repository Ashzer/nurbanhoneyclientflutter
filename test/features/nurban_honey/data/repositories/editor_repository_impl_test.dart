import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/editor_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/image_post_response_model/image_post_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/editor_repository_impl.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';

import 'editor_repository_impl_test.mocks.dart';

@GenerateMocks([NetworkStatus, EditorRemoteDataSource])
void main() {
  late MockNetworkStatus mockNetworkStatus;
  late MockEditorRemoteDataSource mockEditorRemoteDataSource;
  late EditorRepository repository;

  setUp(() {
    mockNetworkStatus = MockNetworkStatus();
    mockEditorRemoteDataSource = MockEditorRemoteDataSource();
    repository =
        EditorRepositoryImpl(mockNetworkStatus, mockEditorRemoteDataSource);
  });

  group('Editor repository tests :', () {
    final tEmptyResponseModel = EmptyResponseModel("result");
    final tEmptyResponse = tEmptyResponseModel.toEmptyResponse();

    group('postNurbanArticle', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockEditorRemoteDataSource.postNurbanArticle(
                  any, any, any, any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.postNurbanArticle("address", "token", "title", "uuid",
              "lossCut", "thumbnail", "content");

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
            when(mockEditorRemoteDataSource.postNurbanArticle(
                    any, any, any, any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result = await repository.postNurbanArticle("address",
                "token", "title", "uuid", "lossCut", "thumbnail", "content");

            verify(mockEditorRemoteDataSource.postNurbanArticle("address",
                "token", "title", "uuid", "lossCut", "thumbnail", "content"));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockEditorRemoteDataSource.postNurbanArticle(
                    any, any, any, any, any, any, any))
                .thenThrow(ServerException());

            final result = await repository.postNurbanArticle("address",
                "token", "title", "uuid", "lossCut", "thumbnail", "content");

            verify(mockEditorRemoteDataSource.postNurbanArticle("address",
                "token", "title", "uuid", "lossCut", "thumbnail", "content"));
            expect(result, Left(ServerFailure()));
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
            final result = await repository.postNurbanArticle("address",
                "token", "title", "uuid", "lossCut", "thumbnail", "content");

            verifyNever(mockEditorRemoteDataSource.postNurbanArticle(
                any, any, any, any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('postArticle', () {
      //Model
      //Entity
      test(
        "네트워크 연결 확인",
        () async {
          when(mockEditorRemoteDataSource.postArticle(
                  any, any, any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.postArticle(
              "address", "token", "title", "uuid", "thumbnail", "content");

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
            when(mockEditorRemoteDataSource.postArticle(
                    any, any, any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result = await repository.postArticle(
                "address", "token", "title", "uuid", "thumbnail", "content");

            verify(mockEditorRemoteDataSource.postArticle(
                "address", "token", "title", "uuid", "thumbnail", "content"));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockEditorRemoteDataSource.postArticle(
                    any, any, any, any, any, any))
                .thenThrow(ServerException());

            final result = await repository.postArticle(
                "address", "token", "title", "uuid", "thumbnail", "content");

            verify(mockEditorRemoteDataSource.postArticle(
                "address", "token", "title", "uuid", "thumbnail", "content"));
            expect(result, Left(ServerFailure()));
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
            final result = await repository.postArticle(
                "address", "token", "title", "uuid", "thumbnail", "content");

            verifyNever(mockEditorRemoteDataSource.postArticle(
                any, any, any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('putNurbanArticle', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockEditorRemoteDataSource.putNurbanArticle(
                  any, any, any, any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.putNurbanArticle("address", "token", 1, "thumbnail",
              "title", "lossCut", "content");

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockEditorRemoteDataSource.putNurbanArticle(
                  any, any, any, any, any, any, any))
              .thenAnswer(((_) async => tEmptyResponseModel));
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });

        test(
          "정상 동작",
          () async {
            when(mockEditorRemoteDataSource.putNurbanArticle(
                    any, any, any, any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result = await repository.putNurbanArticle("address", "token",
                1, "thumbnail", "title", "lossCut", "content");

            verify(mockEditorRemoteDataSource.putNurbanArticle("address",
                "token", 1, "thumbnail", "title", "lossCut", "content"));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockEditorRemoteDataSource.putNurbanArticle(
                    any, any, any, any, any, any, any))
                .thenThrow(ServerException());

            final result = await repository.putNurbanArticle("address", "token",
                1, "thumbnail", "title", "lossCut", "content");

            verify(mockEditorRemoteDataSource.putNurbanArticle("address",
                "token", 1, "thumbnail", "title", "lossCut", "content"));
            expect(result, Left(ServerFailure()));
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
            final result = await repository.putNurbanArticle("address", "token",
                1, "thumbnail", "title", "lossCut", "content");

            verifyNever(mockEditorRemoteDataSource.putNurbanArticle(
                any, any, any, any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('putArticle', () {
      //Model
      //Entity
      test(
        "네트워크 연결 확인",
        () async {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
          when(mockEditorRemoteDataSource.putArticle(
                  any, any, any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);

          repository.putArticle(
              "address", "token", 1, "thumbnail", "title", "content");

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
            when(mockEditorRemoteDataSource.putArticle(
                    any, any, any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result = await repository.putArticle(
                "address", "token", 1, "thumbnail", "title", "content");

            verify(mockEditorRemoteDataSource.putArticle(
                "address", "token", 1, "thumbnail", "title", "content"));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockEditorRemoteDataSource.putArticle(
                    any, any, any, any, any, any))
                .thenThrow(ServerException());

            final result = await repository.putArticle(
                "address", "token", 1, "thumbnail", "title", "content");

            verify(mockEditorRemoteDataSource.putArticle(
                "address", "token", 1, "thumbnail", "title", "content"));
            expect(result, Left(ServerFailure()));
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
            final result = await repository.putArticle(
                "address", "token", 1, "thumbnail", "title", "content");

            verifyNever(mockEditorRemoteDataSource.putArticle(
                any, any, any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('deleteArticle', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockEditorRemoteDataSource.deleteArticle(any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.deleteArticle("address", "token", 1, "uuid");

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
            when(mockEditorRemoteDataSource.deleteArticle(any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result =
                await repository.deleteArticle("address", "token", 1, "uuid");

            verify(mockEditorRemoteDataSource.deleteArticle(
                "address", "token", 1, "uuid"));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockEditorRemoteDataSource.deleteArticle(any, any, any, any))
                .thenThrow(ServerException());

            final result =
                await repository.deleteArticle("address", "token", 1, "uuid");

            verify(mockEditorRemoteDataSource.deleteArticle(
                "address", "token", 1, "uuid"));
            expect(result, Left(ServerFailure()));
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
            final result =
                await repository.deleteArticle("address", "token", 1, "uuid");

            verifyNever(
                mockEditorRemoteDataSource.deleteArticle(any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('postImage', () {
      final tImagePostResponseModel = ImagePostResponseModel("result");
      final tImagePostResponse = tImagePostResponseModel.toImagePostResponse();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockEditorRemoteDataSource.postImage(
                  "address", "token", "uuid", "imagePath"))
              .thenAnswer((_) async => tImagePostResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.postImage("address", "token", "uuid", "imagePath");

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
            when(mockEditorRemoteDataSource.postImage(any, any, any, any))
                .thenAnswer((_) async => tImagePostResponseModel);

            final imageResponse = await repository.postImage(
                "address", "token", "uuid", "imagePath");

            verify(mockEditorRemoteDataSource.postImage(
                "address", "token", "uuid", "imagePath"));
            expect(imageResponse, Right(tImagePostResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockEditorRemoteDataSource.postImage(any, any, any, any))
                .thenThrow(ServerException());

            final imageResponse = await repository.postImage(
                "address", "token", "uuid", "imagePath");

            verify(mockEditorRemoteDataSource.postImage(
                "address", "token", "uuid", "imagePath"));
            expect(imageResponse, Left(ServerFailure()));
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
            final imageResponse = await repository.postImage(
                "address", "token", "uuid", "imagePath");

            verifyNever(
                mockEditorRemoteDataSource.postImage(any, any, any, any));
            expect(imageResponse, Left(NetworkFailure()));
          },
        );
      });
    });
  });
}
