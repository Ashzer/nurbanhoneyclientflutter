import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/rank/rank.dart';

part 'rank_model.freezed.dart';
part 'rank_model.g.dart';

@freezed
class RankModel with _$RankModel {
  factory RankModel() = _RankModel;

  factory RankModel.fromJson(Map<String, dynamic> json) =>
      _$RankModelFromJson(json);
}

extension GetEntity on RankModel {
  Rank toRank() => throw UnimplementedError();
}
//TODO: after dummy data has set