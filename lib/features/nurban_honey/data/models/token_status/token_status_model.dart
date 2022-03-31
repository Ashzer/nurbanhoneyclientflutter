import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/token_status/token_status.dart';

part 'token_status_model.freezed.dart';
part 'token_status_model.g.dart';

@freezed
class TokenStatusModel with _$TokenStatusModel {
  factory TokenStatusModel(bool result) = _TokenStatusModel;

  factory TokenStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TokenStatusModelFromJson(json);
}

extension GetEntity on TokenStatusModel {
  TokenStatus toTokenStatus() => TokenStatus(result);
}
//TODO: after dummy data has set