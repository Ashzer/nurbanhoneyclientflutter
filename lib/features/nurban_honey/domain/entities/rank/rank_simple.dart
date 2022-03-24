import 'package:freezed_annotation/freezed_annotation.dart';

part 'rank_simple.freezed.dart';

@freezed
class RankSimple with _$RankSimple {
  const factory RankSimple(int rankId, int userId, String badge,
      String nickname, List<String> insignias) = _RankSimple;
}
