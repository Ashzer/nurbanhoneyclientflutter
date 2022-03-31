import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/image_post_response_model/image_post_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/image_post_response/image_post_response.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tImagePostResponseModel = ImagePostResponseModel("result");
  final tImagePostResponse = ImagePostResponse(Uri.parse("result"));
  const fileName = "image_post_response.json";

  group('Json 변환', () {
    test(
      "Json으로 Model 생성",
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture(fileName));
        final result = ImagePostResponseModel.fromJson(jsonMap);

        expect(result, tImagePostResponseModel);
      },
    );

    test(
      "Model로 Json 생성",
      () async {
        final result = tImagePostResponseModel.toJson();
        final expectedMap = json.decode(fixture(fileName));
        expect(result, expectedMap);
      },
    );
  });

  group("Entity 변환", () {
    test(
      "Model로 Entity 생성",
      () async {
        final result = tImagePostResponseModel.toImagePostResponse();

        expect(result, tImagePostResponse);
      },
    );
  });
}
