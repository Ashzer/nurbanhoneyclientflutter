import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/article_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_comment_model/article_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_detail_model/article_detail_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model/article_item_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_ratings_model/article_ratings_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/user_info.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/article_repository_impl.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart';
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
    final tEmptyResponseModel = EmptyResponseModel("result");
    final tEmptyResponse = tEmptyResponseModel.toEmptyResponse();
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
        () async {
          when(mockArticleRemoteDataSource.getArticle(any, any))
              .thenAnswer((_) async => tArticleDetailModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.getArticle("address", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source에서 Article 가져오기",
          () async {
            when(mockArticleRemoteDataSource.getArticle("address", 1))
                .thenAnswer((_) async => tArticleDetailModel);

            final result = await repository.getArticle("address", 1);

            verify(mockArticleRemoteDataSource.getArticle("address", 1));
            expect(result, Right(tArticleDetail));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.getArticle("address", 1))
                .thenThrow(ServerException());

            final result = await repository.getArticle("address", 1);

            verify(mockArticleRemoteDataSource.getArticle("address", 1));
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
            final result = await repository.getArticle("address", 1);

            verifyNever(mockArticleRemoteDataSource.getArticle(any, any));
            expect(result, equals(Left(NetworkFailure())));
          },
        );
      });
    });

    group('postLike', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.postLike(any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.postLike("address", "token", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source로 좋아요 보내기",
          () async {
            when(mockArticleRemoteDataSource.postLike("address", "token", 1))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result = await repository.postLike("address", "token", 1);

            verify(mockArticleRemoteDataSource.postLike("address", "token", 1));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.postLike(any, any, any))
                .thenThrow(ServerException());

            final result = await repository.postLike("address", "token", 1);

            verify(mockArticleRemoteDataSource.postLike("address", "token", 1));
            expect(result, equals(Left(ServerFailure())));
          },
        );

        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.postLike(any, any, any))
                .thenThrow(AuthorizationException());

            final result = await repository.postLike("address", "token", 1);
            verify(mockArticleRemoteDataSource.postLike("address", "token", 1));
            expect(result, equals(Left(AuthorizationFailure())));
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
            final result = await repository.postLike("address", "token", 1);

            verifyNever(
                mockArticleRemoteDataSource.postLike("address", "token", 1));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('deleteLike', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.deleteLike(any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.deleteLike("address", "token", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source로 좋아요 취소 보내기",
          () async {
            when(mockArticleRemoteDataSource.deleteLike("address", "token", 1))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result = await repository.deleteLike("address", "token", 1);

            verify(
                mockArticleRemoteDataSource.deleteLike("address", "token", 1));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.deleteLike(any, any, any))
                .thenThrow(ServerException());

            final result = await repository.deleteLike("address", "token", 1);

            verify(
                mockArticleRemoteDataSource.deleteLike("address", "token", 1));
            expect(result, equals(Left(ServerFailure())));
          },
        );

        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.deleteLike(any, any, any))
                .thenThrow(AuthorizationException());

            final result = await repository.deleteLike("address", "token", 1);
            verify(
                mockArticleRemoteDataSource.deleteLike("address", "token", 1));
            expect(result, equals(Left(AuthorizationFailure())));
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
            final result = await repository.deleteLike("address", "token", 1);

            verifyNever(mockArticleRemoteDataSource.deleteLike(any, any, any));
            expect(result, equals(Left(NetworkFailure())));
          },
        );
      });
    });

    group('postDislike', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
          when(mockArticleRemoteDataSource.postDislike(any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);

          repository.postDislike("address", "token", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source로 싫어요 보내기",
          () async {
            when(mockArticleRemoteDataSource.postDislike("address", "token", 1))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result = await repository.postDislike("address", "token", 1);

            verify(
                mockArticleRemoteDataSource.postDislike("address", "token", 1));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.postDislike(any, any, any))
                .thenThrow(ServerException());

            final result = await repository.postDislike("address", "token", 1);

            verify(
                mockArticleRemoteDataSource.postDislike("address", "token", 1));
            expect(result, equals(Left(ServerFailure())));
          },
        );
        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.postDislike(any, any, any))
                .thenThrow(AuthorizationException());

            final result = await repository.postDislike("address", "token", 1);
            verify(
                mockArticleRemoteDataSource.postDislike("address", "token", 1));
            expect(result, equals(Left(AuthorizationFailure())));
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
            final result = await repository.postDislike("address", "token", 1);

            verifyNever(mockArticleRemoteDataSource.postDislike(any, any, any));
            expect(result, equals(Left(NetworkFailure())));
          },
        );
      });
    });

    group('deleteDislike', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.deleteDislike(any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.deleteDislike("address", "token", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source로 싫어요 취소 보내기",
          () async {
            when(mockArticleRemoteDataSource.deleteDislike(any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result =
                await repository.deleteDislike("address", "token", 1);

            verify(mockArticleRemoteDataSource.deleteDislike(
                "address", "token", 1));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.deleteDislike(any, any, any))
                .thenThrow(ServerException());

            final result =
                await repository.deleteDislike("address", "token", 1);

            verify(mockArticleRemoteDataSource.deleteDislike(
                "address", "token", 1));
            expect(result, Left(ServerFailure()));
          },
        );
        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.deleteDislike(any, any, any))
                .thenThrow(AuthorizationException());

            final result =
                await repository.deleteDislike("address", "token", 1);
            verify(mockArticleRemoteDataSource.deleteDislike(
                "address", "token", 1));
            expect(result, equals(Left(AuthorizationFailure())));
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
                await repository.deleteDislike("address", "token", 1);

            verifyNever(
                mockArticleRemoteDataSource.deleteDislike(any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });
    group('getArticleRatings', () {
      final tArticleRatingsModel = ArticleRatingsModel(1, 1, 1, "myRating");
      final tArticleRatings = tArticleRatingsModel.toArticleRatings();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.getArticleRatings(any, any, any))
              .thenAnswer((_) async => tArticleRatingsModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.getArticleRatings("address", "token", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source에서 좋아요 싫어요 정보 가져오기",
          () async {
            when(mockArticleRemoteDataSource.getArticleRatings(any, any, any))
                .thenAnswer((_) async => tArticleRatingsModel);

            final result =
                await repository.getArticleRatings("address", "token", 1);

            verify(mockArticleRemoteDataSource.getArticleRatings(
                "address", "token", 1));
            expect(result, Right(tArticleRatings));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.getArticleRatings(any, any, any))
                .thenThrow(ServerException());

            final result =
                await repository.getArticleRatings("address", "token", 1);

            verify(mockArticleRemoteDataSource.getArticleRatings(
                "address", "token", 1));
            expect(result, Left(ServerFailure()));
          },
        );

        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.getArticleRatings(any, any, any))
                .thenThrow(AuthorizationException());

            final result =
                await repository.getArticleRatings("address", "token", 1);

            verify(mockArticleRemoteDataSource.getArticleRatings(
                "address", "token", 1));
            expect(result, Left(AuthorizationFailure()));
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
                await repository.getArticleRatings("address", "token", 1);

            verifyNever(
                mockArticleRemoteDataSource.getArticleRatings(any, any, any));
            expect(result, equals(Left(NetworkFailure())));
          },
        );
      });
    });

    group('getComment', () {
      final tArticleCommentModel = ArticleCommentModel(
          1, "content", 1, UserInfo(1, "badge", "nickname", ["insignia"]));
      final tArticleComment = tArticleCommentModel.toArticleComment();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.getComment(any, any))
              .thenAnswer((_) async => tArticleCommentModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.getComment("address", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source에서 comment 가져오기",
          () async {
            when(mockArticleRemoteDataSource.getComment(any, any))
                .thenAnswer((_) async => tArticleCommentModel);

            final result = await repository.getComment("address", 1);

            verify(mockArticleRemoteDataSource.getComment("address", 1));
            expect(result, Right(tArticleComment));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.getComment(any, any))
                .thenThrow(ServerException());

            final result = await repository.getComment("address", 1);

            verify(mockArticleRemoteDataSource.getComment("address", 1));
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
            final result = await repository.getComment("address", 1);

            verifyNever(mockArticleRemoteDataSource.getComment(any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('getComments', () {
      final tArticleCommentModels = [
        ArticleCommentModel(1, "content1", 1,
            UserInfo(1, "badge1", "nickname1", ["insignia1"])),
        ArticleCommentModel(
            2, "content2", 2, UserInfo(2, "badge2", "nickname2", ["insignia2"]))
      ];
      final tArticleComments = tArticleCommentModels.toArticleComments();
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.getComments(any, any, any, any))
              .thenAnswer((_) async => tArticleCommentModels);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.getComments("address", 1, 0, 10);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source에서 comment 리스트 가져오기",
          () async {
            when(mockArticleRemoteDataSource.getComments(any, any, any, any))
                .thenAnswer((_) async => tArticleCommentModels);

            final result = await repository.getComments("address", 1, 0, 10);

            verify(
                mockArticleRemoteDataSource.getComments("address", 1, 0, 10));
            expect(result.runtimeType, Right<Failure, List<ArticleComment>>);
            result.fold((l) => null, (r) => expect(r, tArticleComments));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.getComments(any, any, any, any))
                .thenThrow(ServerException());

            final result = await repository.getComments("address", 1, 0, 10);

            verify(
                mockArticleRemoteDataSource.getComments("address", 1, 0, 10));
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
            final result = await repository.getComments("address", 1, 0, 10);

            verifyNever(
                mockArticleRemoteDataSource.getComments(any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('postComment', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.postComment(any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.postComment("address", "token", "comment", 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source로 comment 보내기",
          () async {
            when(mockArticleRemoteDataSource.postComment(any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result =
                await repository.postComment("address", "token", "comment", 1);

            verify(mockArticleRemoteDataSource.postComment(
                "address", "token", "comment", 1));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.postComment(any, any, any, any))
                .thenThrow(ServerException());

            final result =
                await repository.postComment("address", "token", "comment", 1);

            verify(mockArticleRemoteDataSource.postComment(
                "address", "token", "comment", 1));
            expect(result, Left(ServerFailure()));
          },
        );

        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.postComment(any, any, any, any))
                .thenThrow(AuthorizationException());

            final result =
                await repository.postComment("address", "token", "comment", 1);

            verify(mockArticleRemoteDataSource.postComment(
                "address", "token", "comment", 1));
            expect(result, Left(AuthorizationFailure()));
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
                await repository.postComment("address", "token", "comment", 1);

            verifyNever(
                mockArticleRemoteDataSource.postComment(any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('deleteComment', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.deleteComment(any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.deleteComment("address", "token", 1, 1);

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source로 comment 삭제 보내기",
          () async {
            when(mockArticleRemoteDataSource.deleteComment(any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result =
                await repository.deleteComment("address", "token", 1, 1);

            verify(mockArticleRemoteDataSource.deleteComment(
                "address", "token", 1, 1));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.deleteComment(any, any, any, any))
                .thenThrow(ServerException());

            final result =
                await repository.deleteComment("address", "token", 1, 1);

            verify(mockArticleRemoteDataSource.deleteComment(
                "address", "token", 1, 1));
            expect(result, Left(ServerFailure()));
          },
        );

        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.deleteComment(any, any, any, any))
                .thenThrow(AuthorizationException());

            final result =
                await repository.deleteComment("address", "token", 1, 1);

            verify(mockArticleRemoteDataSource.deleteComment(
                "address", "token", 1, 1));
            expect(result, Left(AuthorizationFailure()));
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
                await repository.deleteComment("address", "token", 1, 1);

            verifyNever(
                mockArticleRemoteDataSource.deleteComment(any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });

    group('putComment', () {
      test(
        "네트워크 연결 확인",
        () async {
          when(mockArticleRemoteDataSource.putComment(any, any, any, any))
              .thenAnswer((_) async => tEmptyResponseModel);
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);

          repository.putComment("address", "token", 1, "comment");

          verify(mockNetworkStatus.isConnected);
        },
      );

      group('=> 연결 됨', () {
        setUp(() {
          when(mockNetworkStatus.isConnected).thenAnswer((_) async => true);
        });
        test(
          "remote data source로 comment 수정 보내기",
          () async {
            when(mockArticleRemoteDataSource.putComment(any, any, any, any))
                .thenAnswer((_) async => tEmptyResponseModel);

            final result =
                await repository.putComment("address", "token", 1, "comment");

            verify(mockArticleRemoteDataSource.putComment(
                "address", "token", 1, "comment"));
            expect(result, Right(tEmptyResponse));
          },
        );

        test(
          "서버에서 데이터를 잘 못 받았을 때 ServerFailure",
          () async {
            when(mockArticleRemoteDataSource.putComment(any, any, any, any))
                .thenThrow(ServerException());

            final result =
                await repository.putComment("address", "token", 1, "comment");

            verify(mockArticleRemoteDataSource.putComment(
                "address", "token", 1, "comment"));
            expect(result, Left(ServerFailure()));
          },
        );

        test(
          "서버에서 토큰 만료 에러가 반환 되었을 때 AuthorizationException",
          () async {
            when(mockArticleRemoteDataSource.putComment(any, any, any, any))
                .thenThrow(AuthorizationException());

            final result =
                await repository.putComment("address", "token", 1, "comment");

            verify(mockArticleRemoteDataSource.putComment(
                "address", "token", 1, "comment"));
            expect(result, Left(AuthorizationFailure()));
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
                await repository.putComment("address", "token", 1, "comment");

            verifyNever(
                mockArticleRemoteDataSource.putComment(any, any, any, any));
            expect(result, Left(NetworkFailure()));
          },
        );
      });
    });
  });
}
