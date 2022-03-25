import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/core/usecase/usecase.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/rank/rank.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/rank_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/rank_repository/get_ranks.dart';
import 'get_ranks_test.mocks.dart';

@GenerateMocks([RankRepository])
void main() {
  final mockRankRepository = MockRankRepository();
  final getRanks = GetRanks(mockRankRepository);

  const tRanks = [
    Rank(1, "totalLossCut", "totalLikes", 1, "badge", "nickname", ["insginia"]),
    Rank(2, "totalLossCut", "totalLikes", 2, "badge", "nickname", ["insginia"])
  ];

  test(
    "Rank Repository에서 rank 리스트 가져오기",
    () async {
      when(mockRankRepository.getRanks())
          .thenAnswer((_) async => const Right(tRanks));

      final result = await getRanks(NoParams());

      expect(result, const Right(tRanks));
      verify(mockRankRepository.getRanks());
      verifyNoMoreInteractions(mockRankRepository);
    },
  );
}
