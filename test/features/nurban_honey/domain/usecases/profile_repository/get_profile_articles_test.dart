import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_article/profile_article.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/profile_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/profile_repository/get_profile_articles.dart';
import 'get_profile_articles_test.mocks.dart';

@GenerateMocks([ProfileRepository])
void main() {
  final mockProfileRepository = MockProfileRepository();
  final getProfileArticles = GetProfileArticles(mockProfileRepository);

  final tProfileArticles = [
    const ProfileArticle(1, 1, "boardName", "boardAddress", "thumbnail",
        "title", "comments", "createdAt"),
    const ProfileArticle(2, 2, "boardName", "boardAddress", "thumbnail",
        "title", "comments", "createdAt"),
  ];

  test(
    "Profile Repository에서 본인 글 목록 가져오기",
    () async {
      when(mockProfileRepository.getProfileArticles("token", 0, 10))
          .thenAnswer((_) async => Right(tProfileArticles));

      final result = await getProfileArticles(
          const Params(token: "token", offset: 0, limit: 10));

      expect(result, Right(tProfileArticles));
      verify(mockProfileRepository.getProfileArticles("token", 0, 10));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );

  test(
    "GetProfileArticles Params is Equatable",
    () async {
      expect(Params(token: "token", offset: 0, limit: 10),
          Params(token: "token", offset: 0, limit: 10));
    },
  );
}
