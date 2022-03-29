import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';

void main() {
  test(
    "Failure is Equatable",
    () async {
      expect(ServerFailure(), ServerFailure());
    },
  );
}
