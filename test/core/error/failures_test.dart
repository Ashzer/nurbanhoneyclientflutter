import 'package:flutter_test/flutter_test.dart';
import 'package:nurbanhoney_flutter/core/error/failures.dart';

void main() {
  test(
    "Failure is Equatable",
    () async {
      expect(ServerFailure(), ServerFailure());
    },
  );
}
