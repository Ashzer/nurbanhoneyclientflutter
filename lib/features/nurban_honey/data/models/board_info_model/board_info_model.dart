import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/board_info/board_info.dart';

part 'board_info_model.freezed.dart';
part 'board_info_model.g.dart';

@freezed
class BoardInfoModel with _$BoardInfoModel {
  factory BoardInfoModel(int id, String name, String address) = _BoardInfoModel;

  factory BoardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BoardInfoModelFromJson(json);
}

extension GetEntity on BoardInfoModel {
  BoardInfo toBoardInfo() => BoardInfo(id, name, address);
}

extension GetEntities on List<BoardInfoModel> {
  List<BoardInfo> toBoardInfos() => map((e) => e.toBoardInfo()).toList();
}
