import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tEmptyResponseModel = EmptyResponseModel("result");
  final tEmptyResponse = EmptyResponse("result");
  const fileName = "empty_response.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = EmptyResponseModel.fromJson(jsonMap);

        expect(result, tEmptyResponseModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tEmptyResponseModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tEmptyResponseModel.toEmptyResponse();

        expect(result, tEmptyResponse);
      },
    );
  });
}
