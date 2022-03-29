import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_comment_model/article_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/user_info.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_comment/article_comment.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tArticleCommentModel = ArticleCommentModel(
      1, "content", 1, UserInfo(1, "badge", "nickname", ["insignia"]));
  final tArticleCommentModelNull = ArticleCommentModel(
      1, "content", 1, UserInfo(1, "badge", "nickname", null));
  final tArticleComment =
      ArticleComment(1, "content", 1, 1, "badge", "nickname", ["insignia"]);
  final tArticleCommentNull =
      ArticleComment(1, "content", 1, 1, "badge", "nickname", []);

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_comment.json'));
        final result = ArticleCommentModel.fromJson(jsonMap);

        expect(result, tArticleCommentModel);
      },
    );
    test(
      "null 포함 Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_comment_null.json'));
        final result = ArticleCommentModel.fromJson(jsonMap);

        expect(result, tArticleCommentModelNull);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tArticleCommentModel.toJson();
        final expectedMap = json.decode(fixture('article_comment.json'));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tArticleCommentModel.toArticleComment();

        expect(result, tArticleComment);
      },
    );

    test(
      "null 포함 Model로 Entity 생성",
      () async {
        final result = tArticleCommentModelNull.toArticleComment();

        expect(result, tArticleCommentNull);
      },
    );

    test(
      "Entity에서 Model 생성",
      () async {
        final result = ArticleCommentModel.fromArticleComment(tArticleComment);

        expect(result, tArticleCommentModel);
      },
    );
  });
}
