import 'package:freezed_annotation/freezed_annotation.dart';

part 'nurban_token.freezed.dart';

@freezed
class NurbanToken with _$NurbanToken {
  const factory NurbanToken(String token, int userId) = _NurbanToken;
}
