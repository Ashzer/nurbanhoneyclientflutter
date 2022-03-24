import 'package:freezed_annotation/freezed_annotation.dart';

part 'rank.freezed.dart';

@freezed
class Rank with _$Rank {
  const factory Rank(
      int rankId,
      String totalLossCut,
      String totalLikes,
      int userId,
      String badge,
      String nickname,
      List<String> insginias) = _Rank;
}
