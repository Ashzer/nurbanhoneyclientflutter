import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/location_model/location_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_comment_model/profile_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/location/location.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile_comment/profile_comment.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tProfileCommentModel = ProfileCommentModel(1, "content", "createdAt",
      LocationModel(1, "title"), BoardInfoModel(1, "name", "address"));
  const tProfileComment = ProfileComment(
      1, "content", 1, "createdAt", 1, "name", "address", "title");
  final tProfileCommentModels = [
    ProfileCommentModel(1, "content", "createdAt", LocationModel(1, "title"),
        BoardInfoModel(1, "name", "address")),
    ProfileCommentModel(2, "content", "createdAt", LocationModel(2, "title"),
        BoardInfoModel(2, "name", "address"))
  ];
  const tProfileComments = [
    ProfileComment(1, "content", 1, "createdAt", 1, "name", "address", "title"),
    ProfileComment(2, "content", 2, "createdAt", 2, "name", "address", "title")
  ];
  const fileName = "profile_comment.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = ProfileCommentModel.fromJson(jsonMap);

        expect(result, tProfileCommentModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tProfileCommentModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tProfileCommentModel.toProfileComment();

        expect(result, tProfileComment);
      },
    );

    test(
      "List<Model>로 List<Entity> 생성",
      () async {
        final result = tProfileCommentModels.toProfileComments();

        expect(result, tProfileComments);
      },
    );
  });
}
