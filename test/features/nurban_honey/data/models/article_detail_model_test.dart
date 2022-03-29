import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/article_detail_model/article_detail_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/article_detail/article_detail.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
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

  final tArticleDetailModelNull = ArticleDetailModel(
      1,
      "uuid",
      null,
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
      null,
      null);

  final tArticleDetail = ArticleDetail(
      1,
      "uuid",
      "thumbnail",
      "title",
      "1",
      "content",
      "1",
      "1",
      "1",
      "1",
      "updatedAt",
      1,
      "badge",
      "nickname",
      ["insignia"],
      "myRating");

  final tArticleDetailNull = ArticleDetail(
      1,
      "uuid",
      "",
      "title",
      "1",
      "content",
      "1",
      "1",
      "1",
      "1",
      "updatedAt",
      1,
      "badge",
      "nickname",
      [],
      "");

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_detail.json'));
        final result = ArticleDetailModel.fromJson(jsonMap);

        expect(result, tArticleDetailModel);
      },
    );
    test(
      "null 포함 Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('article_detail_null.json'));
        final result = ArticleDetailModel.fromJson(jsonMap);

        expect(result, tArticleDetailModelNull);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tArticleDetailModel.toJson();
        final expectedMap = json.decode(fixture('article_detail.json'));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tArticleDetailModel.toArticleDetail();

        expect(result, tArticleDetail);
      },
    );

    test(
      "null 포함 Model로 Entity 생성",
      () async {
        final result = tArticleDetailModelNull.toArticleDetail();

        expect(result, tArticleDetailNull);
      },
    );
  });
}
