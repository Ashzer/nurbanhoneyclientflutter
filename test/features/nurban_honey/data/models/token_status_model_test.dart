import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/token_status/token_status_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/token_status/token_status.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tTokenStatusModel = TokenStatusModel(true);
  const tTokenStatus = TokenStatus(true);
  const fileName = "token_status.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = TokenStatusModel.fromJson(jsonMap);

        expect(result, tTokenStatusModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tTokenStatusModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tTokenStatusModel.toTokenStatus();

        expect(result, tTokenStatus);
      },
    );
  });
}
