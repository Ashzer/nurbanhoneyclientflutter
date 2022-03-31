import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/editor_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
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

    group('deleteArticle', () {
      //Model
      //Entity
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
          () async {},
        );
      });
    });

    group('postArticle', () {
      //Model
      //Entity
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
          () async {},
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
          () async {},
        );
      });
    });

    group('postNurbanArticle', () {
      //Model
      //Entity
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
          () async {},
        );
      });
    });

    group('putNurbanArticle', () {
      //Model
      //Entity
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
          () async {},
        );
      });
    });

    group('postImage', () {
      //Model
      //Entity
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
