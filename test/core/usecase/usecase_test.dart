import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';

void main() {
  test(
    "UseCase NoParams is Equatable",
    () async {
      expect(NoParams(), NoParams());
    },
  );
}
