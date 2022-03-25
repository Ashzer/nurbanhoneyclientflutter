import 'dart:convert';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/app_version_model/app_version_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/app_version/app_version.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tAppVersionModel = AppVersionModel("appversion", true);
  final tAppVersion = AppVersion("appversion", true);

  group("Json 변환", () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture("app_version.json"));

        final result = AppVersionModel.fromJson(jsonMap);

        expect(result, tAppVersionModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final expectedMap = json.decode(fixture("app_version.json"));

        final result = tAppVersionModel.toJson();

        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tAppVersionModel.toAppVersion();

        expect(result, tAppVersion);
      },
    );

    test(
      "Entitoy에서 Model 생성",
      () async {
        final result = AppVersionModel.fromAppVersion(tAppVersion);

        expect(result, tAppVersionModel);
      },
    );
  });
}
