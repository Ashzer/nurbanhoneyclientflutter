import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/article_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_detail_model/article_detail_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model/article_item_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/user_info.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/article_repository_impl.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_item/article_item.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/article_repository.dart';

import 'article_repository_impl_test.mocks.dart';

@GenerateMocks([NetworkStatus, ArticleRemoteDataSource])
void main() {
  late MockNetworkStatus mockNetworkStatus;
  late MockArticleRemoteDataSource mockArticleRemoteDataSource;
  late ArticleRepository repository;
  setUp(() {
    mockNetworkStatus = MockNetworkStatus();
    mockArticleRemoteDataSource = MockArticleRemoteDataSource();
    repository = ArticleRepositoryImpl(
        networkStatus: mockNetworkStatus,
        articleRemoteDataSource: mockArticleRemoteDataSource);
  });

  group("Article repository tests :", () {
    group('getArticles', () {
      final tArticleItemModels = [
        ArticleItemModel(1, "thumbnail1", "title1", 1,
            UserInfo(1, "badge1", "nickname1", ["insignia1"])),
        ArticleItemModel(2, "thumbnail2", "title2", 2,
            UserInfo(2, "badge2", "nickname2", ["insignia2"]))
      ];

      final tArticleItems = tArticleItemModels.toArticleItems();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
          when(mockArticleRemoteDataSource.getArticles("address", 0, 0, 10))
              .thenAnswer((_) async => tArticleItemModels);

          repository.getArticles("address", 0, 0, 10);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test("remote data source에서 Article 리스트 가져오기", () async {
          when(mockArticleRemoteDataSource.getArticles("address", 0, 0, 10))
              .thenAnswer((_) async => tArticleItemModels);

          final result = await repository.getArticles("address", 0, 0, 10);

          verify(mockArticleRemoteDataSource.getArticles("address", 0, 0, 10));
          expect(result.runtimeType, Right<Failure, List<ArticleItem>>);
          result.fold((l) => null, (r) => expect(r, tArticleItems));
        });

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.getArticles("address", 0, 0, 10))
                .thenThrow(ServerException());

            final result = await repository.getArticles("address", 0, 0, 10);

            verify(
                mockArticleRemoteDataSource.getArticles("address", 0, 0, 10));
            expect(result, equals(Left(ServerFailure())));
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
            final result = await repository.getArticles("address", 0, 0, 10);

            verifyNever(
                mockArticleRemoteDataSource.getArticles(any, any, any, any));
            expect(result, equals(Left(NetworkFailure())));
          },
        );
      });
    });

    group('getArticle', () {
      final tArticleDetailModel = ArticleDetailModel(
          1,
          "uuid",
          "thumbnail",
          "title",
          1,
          "content",
          1,
          1,
          1,
          1,
          "updatedAt",
          1,
          "badge",
          "nickname",
          ["insignia"],
          "myRating");

      final tArticleDetail = tArticleDetailModel.toArticleDetail();
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source에서 Article 가져오기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('postLike', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source로 좋아요 보내기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('deleteLike', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source로 좋아요 취소 보내기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('postDislike', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source로 싫어요 보내기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('deleteDislike', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source로 싫어요 취소 보내기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });
    group('getArticleRatings', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source에서 좋아요 싫어요 정보 가져오기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('getComment', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source에서 comment 가져오기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('getComments', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source에서 comment 리스트 가져오기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('postComment', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source로 comment 보내기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });

    group('deleteComment', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source로 comment 삭제 보내기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });
    group('putComment', () {
      test(
        "네트워크 연결 확인",
        () async {},
      );

      group('=> 연결 됨', () {
        test(
          "remote data source로 comment 수정 보내기",
          () async {},
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {},
        );
      });

      group('=> 연결 안됨', () {
        test(
          "네트워크에 연결되지 않으면 NetworkFailure 리턴",
          () async {},
        );
      });
    });
  });
}
