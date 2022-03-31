import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/nurban_token_model/nurban_token_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNurbanTokenModel = NurbanTokenModel("token", 1);
  const tNurbanToken = NurbanToken("token", 1);
  const fileName = "nurban_token.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = NurbanTokenModel.fromJson(jsonMap);

        expect(result, tNurbanTokenModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tNurbanTokenModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tNurbanTokenModel.toNurbanToken();

        expect(result, tNurbanToken);
      },
    );
  });
}
