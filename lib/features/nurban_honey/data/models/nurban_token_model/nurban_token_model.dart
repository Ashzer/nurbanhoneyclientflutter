import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/nurban_token/nurban_token.dart';

part 'nurban_token_model.freezed.dart';
part 'nurban_token_model.g.dart';

@freezed
class NurbanTokenModel with _$NurbanTokenModel {
  factory NurbanTokenModel(String token, int userId) = _NurbanTokenModel;

  factory NurbanTokenModel.fromJson(Map<String, dynamic> json) =>
      _$NurbanTokenModelFromJson(json);
}

extension GetEntity on NurbanTokenModel {
  NurbanToken toNurbanToken() => NurbanToken(token, userId);
}
