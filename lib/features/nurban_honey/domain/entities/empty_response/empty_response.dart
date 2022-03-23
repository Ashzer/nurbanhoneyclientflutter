import 'package:freezed_annotation/freezed_annotation.dart';

part 'empty_response.freezed.dart';

@freezed
class EmptyResponse with _$EmptyResponse {
  const factory EmptyResponse(String result) = _EmptyResponse;
}
