import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/board_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/board_repository/get_boards.dart';
import 'get_boards_test.mocks.dart';

@GenerateMocks([BoardRepository])
void main() {
  final mockBoardRepository = MockBoardRepository();
  final getBoards = GetBoards(mockBoardRepository);

  final tBoards = [
    BoardInfo(1, "name1", "address1"),
    BoardInfo(2, "name2", "address2"),
  ];

  test(
    "Board Repository에서 board 리스트 가져오기",
    () async {
      when(mockBoardRepository.getBoards())
          .thenAnswer((_) async => Right(tBoards));

      final result = await getBoards(NoParams());

      expect(result, Right(tBoards));
      verify(mockBoardRepository.getBoards());
      verifyNoMoreInteractions(mockBoardRepository);
    },
  );
}
