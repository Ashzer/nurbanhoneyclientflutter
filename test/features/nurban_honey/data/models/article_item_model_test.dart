import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model/article_item_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/user_info.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_item/article_item.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tArticleItemModel = ArticleItemModel(1, "thumbnail", "title", 1,
      UserInfo(1, "badge", "nickname", ["insignia 1", "insignia 2"]));
  final tArticleItemModelNull = ArticleItemModel(
      1, null, "title", 1, UserInfo(1, "badge", "nickname", null));
  final tArticleItem = ArticleItem(1, "thumbnail", "title", "1", 1, "badge",
      "nickname", ["insignia 1", "insignia 2"]);
  final tArticleItemNull =
      ArticleItem(1, "", "title", "1", 1, "badge", "nickname", []);

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_item.json'));
        final result = ArticleItemModel.fromJson(jsonMap);

        expect(result, tArticleItemModel);
      },
    );
    test(
      "null 포함 Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_item_null.json'));
        final result = ArticleItemModel.fromJson(jsonMap);

        expect(result, tArticleItemModelNull);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tArticleItemModel.toJson();
        final expectedMap = json.decode(fixture('article_item.json'));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tArticleItemModel.toArticleItem();

        expect(result, tArticleItem);
      },
    );

    test(
      "null 포함 Model로 Entity 생성",
      () async {
        final result = tArticleItemModelNull.toArticleItem();

        expect(result, tArticleItemNull);
      },
    );

    test(
      "Entity에서 Model 생성",
      () async {
        final result = ArticleItemModel.fromArticleItem(tArticleItem);

        expect(result, tArticleItemModel);
      },
    );
  });
}
