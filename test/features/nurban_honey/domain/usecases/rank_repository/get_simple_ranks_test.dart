import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/rank/rank_simple.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/repositories/rank_repository.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/usecases/rank_repository/get_simple_ranks.dart';
import 'get_simple_ranks_test.mocks.dart';

@GenerateMocks([RankRepository])
void main() {
  final mockRankRepository = MockRankRepository();
  final getSimpleRanks = GetSimpleRanks(mockRankRepository);

  const tSimpleRanks = [
    RankSimple(1, 1, "badge", "nickname", ["insignias"]),
    RankSimple(2, 2, "badge", "nickname", ["insignias"])
  ];

  test(
    "Rank Repository에서 simple rank 리스트 가져오기",
    () async {
      when(mockRankRepository.getSimpleRanks(offset: 0, limit: 10))
          .thenAnswer((_) async => const Right(tSimpleRanks));

      final result = await getSimpleRanks(const Params(offset: 0, limit: 10));

      expect(result, const Right(tSimpleRanks));
      verify(mockRankRepository.getSimpleRanks(offset: 0, limit: 10));
      verifyNoMoreInteractions(mockRankRepository);
    },
  );
}
