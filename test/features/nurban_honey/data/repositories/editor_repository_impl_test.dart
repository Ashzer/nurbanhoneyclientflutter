import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/network/network_status.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/datasources/editor_remote_data_source.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/repositories/editor_repository_impl.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/editor_repository.dart';

import 'editor_repository_impl_test.mocks.dart';

@GenerateMocks([NetworkStatus, EditorRemoteDataSource])
void main() {
  late MockNetworkStatus mockNetworkStatus;
  late MockEditorRemoteDataSource mockEditorRemoteDataSource;
  late EditorRepository repository;

  setUp(() {
    mockNetworkStatus = MockNetworkStatus();
    mockEditorRemoteDataSource = MockEditorRemoteDataSource();
    repository =
        EditorRepositoryImpl(mockNetworkStatus, mockEditorRemoteDataSource);
  });
}
