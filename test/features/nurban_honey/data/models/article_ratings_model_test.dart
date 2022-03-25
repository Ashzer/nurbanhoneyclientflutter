import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_ratings_model/article_ratings_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_ratings/article_ratings.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tArticleRatingsModel = ArticleRatingsModel(1, 1, 1, "myRating");
  final tArticleRatingsModelNull = ArticleRatingsModel(1, 1, 1, null);
  final tArticleRatings = ArticleRatings(1, "1", "1", "myRating");
  final tArticleRatingsNull = ArticleRatings(1, "1", "1", "");

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_ratings.json'));
        final result = ArticleRatingsModel.fromJson(jsonMap);

        expect(result, tArticleRatingsModel);
      },
    );
    test(
      "null 포함 Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_ratings_null.json'));
        final result = ArticleRatingsModel.fromJson(jsonMap);

        expect(result, tArticleRatingsModelNull);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tArticleRatingsModel.toJson();
        final expectedMap = json.decode(fixture('article_ratings.json'));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tArticleRatingsModel.toArticleRatings();

        expect(result, tArticleRatings);
      },
    );

    test(
      "null 포함 Model로 Entity 생성",
      () async {
        final result = tArticleRatingsModelNull.toArticleRatings();

        expect(result, tArticleRatingsNull);
      },
    );
  });
}
