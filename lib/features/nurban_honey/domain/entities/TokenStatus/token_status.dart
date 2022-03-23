import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_status.freezed.dart';

@freezed
class TokenStatus with _$TokenStatus {
  const factory TokenStatus(bool isValid) = _TokenStatus;
}
