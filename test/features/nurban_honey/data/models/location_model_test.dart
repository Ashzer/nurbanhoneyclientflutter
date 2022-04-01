import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/location_model/location_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/location/location.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tLocationModel = LocationModel(1, "title");
  const tLocation = Location(1, "title");
  const fileName = "location.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = LocationModel.fromJson(jsonMap);

        expect(result, tLocationModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tLocationModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tLocationModel.toLocation();

        expect(result, tLocation);
      },
    );
  });
}
