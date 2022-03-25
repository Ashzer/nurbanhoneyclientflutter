import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tBoardInfoModel = BoardInfoModel(1, "name", "address");
  final tBoardInfo = BoardInfo(1, "name", "address");
  final fileName = 'board_info.json';
  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = BoardInfoModel.fromJson(jsonMap);

        expect(result, tBoardInfoModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tBoardInfoModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tBoardInfoModel.toBoardInfo();

        expect(result, tBoardInfo);
      },
    );
  });
}
