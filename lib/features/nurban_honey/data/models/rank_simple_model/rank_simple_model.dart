import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/rank_simple/rank_simple.dart';

part 'rank_simple_model.freezed.dart';
part 'rank_simple_model.g.dart';

@freezed
class RankSimpleModel with _$RankSimpleModel {
  factory RankSimpleModel() = _RankSimpleModel;

  factory RankSimpleModel.fromJson(Map<String, dynamic> json) =>
      _$RankSimpleModelFromJson(json);
}

extension GetEntity on RankSimpleModel {
  RankSimple toRankSimple() => throw UnimplementedError();
}

//TODO: after dummy data has set