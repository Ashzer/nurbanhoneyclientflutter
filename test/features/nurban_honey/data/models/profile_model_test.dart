import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_model/profile_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/profile/profile.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tProfileModel = ProfileModel(1, "loginType", "badge", "nickname",
      "description", 1, ["insigniaShow"], ["insigniaOwn"], 1, 1);
  final tProfileModelNull = ProfileModel(
      1, "loginType", "badge", "nickname", "description", 1, null, null, 1, 1);
  final tProfile = Profile(1, "loginType", "badge", "nickname", "description",
      "1", ["insigniaShow"], ["insigniaOwn"], "1", "1");
  final tProfileNull = Profile(1, "loginType", "badge", "nickname",
      "description", "1", [], [], "1", "1");

  const fileName = "profile.json";
  const fileNameHavingNull = "profile_null.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = ProfileModel.fromJson(jsonMap);

        expect(result, tProfileModel);
      },
    );
    test(
      "null 포함 Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture(fileNameHavingNull));
        final result = ProfileModel.fromJson(jsonMap);

        expect(result, tProfileModelNull);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tProfileModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tProfileModel.toProfile();

        expect(result, tProfile);
      },
    );

    test(
      "null 포함 Model로 Entity 생성",
      () async {
        final result = tProfileModelNull.toProfile();

        expect(result, tProfileNull);
      },
    );
  });
}
