import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';

import 'network_status_test.mocks.dart';

@GenerateMocks([InternetConnectionChecker])
void main() {
  late MockInternetConnectionChecker mockConnectionChecker;
  late NetworkStatusImpl networkStatus;

  setUp(() {
    mockConnectionChecker = MockInternetConnectionChecker();
    networkStatus = NetworkStatusImpl(mockConnectionChecker);
  });

  group('네트워크 연결', () {
    test(
      "Internet Connection Checker로 네트워크 연결 확인",
      () async {
        final tHasConectionFuture = Future.value(true);
        when(mockConnectionChecker.hasConnection)
            .thenAnswer((_) => tHasConectionFuture);

        final result = networkStatus.isConnected;

        verify(mockConnectionChecker.hasConnection);
        expect(result, tHasConectionFuture);
      },
    );
  });
}
