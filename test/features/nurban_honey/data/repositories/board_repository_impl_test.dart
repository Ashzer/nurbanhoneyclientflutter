import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/board_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/board_repository_impl.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/board_repository.dart';

import 'board_repository_impl_test.mocks.dart';

@GenerateMocks([NetworkStatus, BoardRemoteDataSource])
void main() {
  late BoardRepository repository;
  late MockBoardRemoteDataSource mockBoardRemoteDataSource;
  late MockNetworkStatus mockNetworkStatus;

  setUp(() {
    mockBoardRemoteDataSource = MockBoardRemoteDataSource();
    mockNetworkStatus = MockNetworkStatus();
    repository = BoardRepositoryImpl(
        remoteDataSource: mockBoardRemoteDataSource,
        networkStatus: mockNetworkStatus);
  });

  group('getBoards', () {
    final tBoardModels = [
      BoardInfoModel(1, "name1", "address1"),
      BoardInfoModel(2, "name2", "address2")
    ];
    final toBoards = tBoardModels.toBoardInfos();
    test('네트워크 연결 확인', () {
      when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
      when(mockBoardRemoteDataSource.getBoards())
          .thenAnswer((_) async => tBoardModels);
      repository.getBoards();

      verify(mockNetworkStatus.isConnected);
    });

    group('=> 연결 됨', () {
      setUp(() {
        when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
      });

      test('remote data source에서 board 리스트 가져오기', () async {
        when(mockBoardRemoteDataSource.getBoards())
            .thenAnswer((_) async => tBoardModels);

        final result = await repository.getBoards();

        verify(mockBoardRemoteDataSource.getBoards());
        expect(result.runtimeType, Right<Failure, List<BoardInfo>>);
        result.fold((l) => null, (r) => expect(r, toBoards));
      });

      test(
        "서버에서 데이터를 잘 못 받았을 때 ServerFailure 리턴",
        () async {
          when(mockBoardRemoteDataSource.getBoards())
              .thenThrow(ServerException());

          final result = await repository.getBoards();

          verify(mockBoardRemoteDataSource.getBoards());
          expect(result, equals(Left(ServerFailure())));
        },
      );
    });
    group("=> 연결 안됨", () {
      setUp(() {
        when(mockNetworkStatus.isConnected).thenAnswer((_) async => false);
      });

      test(
        "네트워크에 연결되지 않으면 NetworkFailure 리턴",
        () async {
          final result = await repository.getBoards();

          verifyNever(mockBoardRemoteDataSource.getBoards());
          expect(result, equals(Left(NetworkFailure())));
        },
      );
    });
  });
}
