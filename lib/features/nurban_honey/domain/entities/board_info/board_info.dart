import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_info.freezed.dart';

@freezed
class BoardInfo with _$BoardInfo {
  factory BoardInfo(int id, String name, String address) = _BoardInfo;
}
