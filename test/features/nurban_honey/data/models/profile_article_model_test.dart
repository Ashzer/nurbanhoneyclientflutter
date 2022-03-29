import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_article_model/profile_article_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_article/profile_article.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tProfileArticleModel = ProfileArticleModel(1, "thumbnail", "title", 1,
      "createdAt", BoardInfoModel(1, "name", "address"));
  final tProfileArticleModelNull = ProfileArticleModel(
      1, null, "title", 1, "createdAt", BoardInfoModel(1, "name", "address"));
  const tProfileArticle = ProfileArticle(
      1, 1, "name", "address", "thumbnail", "title", "1", "createdAt");
  const tProfileArticleNull =
      ProfileArticle(1, 1, "name", "address", "", "title", "1", "createdAt");

  const fileName = "profile_article.json";
  const fileNameNull = "profile_article_null.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = ProfileArticleModel.fromJson(jsonMap);

        expect(result, tProfileArticleModel);
      },
    );
    test(
      "null 포함 Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileNameNull));
        final result = ProfileArticleModel.fromJson(jsonMap);

        expect(result, tProfileArticleModelNull);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tProfileArticleModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tProfileArticleModel.toProfileArticle();

        expect(result, tProfileArticle);
      },
    );

    test(
      "null 포함 Model로 Entity 생성",
      () async {
        final result = tProfileArticleModelNull.toProfileArticle();

        expect(result, tProfileArticleNull);
      },
    );
  });
}
