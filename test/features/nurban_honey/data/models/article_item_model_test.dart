import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_item_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board/article_item/article_item.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tArticleItemModel = ArticleItemModel(1, "thumbnail", "title", 1,
      UserInfo(1, "badge", "nickname", ["insignia 1", "insignia 2"]));

  group('from Json', () {
    test(
      "Json으로부터 값이 일치하는 Model을 생성한다",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_item.json'));
        final result = ArticleItemModel.fromJson(jsonMap);

        expect(result, tArticleItemModel);
      },
    );
  });

  group('to Json', () {
    test(
      "생성된 Json 객체의 값이 일치한다",
      () async {
        final result = tArticleItemModel.toJson();
        final expectedMap = {
          "id": 1,
          "thumbnail": "thumbnail",
          "title": "title",
          "commentCount": 1,
          "User": {
            "userId": 1,
            "badge": "badge",
            "nickname": "nickname",
            "insignia": ["insignia 1", "insignia 2"]
          }
        };
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    final tArticleItem = ArticleItem(1, "thumbnail", "title", "1", 1, "badge",
        "nickname", ["insignia 1", "insignia 2"]);

    test(
      "Model로 Entity 생성",
      () async {
        final result = tArticleItemModel.toArticleItem();

        expect(result, tArticleItem);
      },
    );

    test(
      "Entity에서 Model 생성",
      () async {
        final result = tArticleItemModel.fromArticleItem(tArticleItem);

        expect(result, tArticleItemModel);
      },
    );
  });
}
