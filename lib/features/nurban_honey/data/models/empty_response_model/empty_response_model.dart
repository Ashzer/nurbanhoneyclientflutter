import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/empty_response/empty_response.dart';

part 'empty_response_model.freezed.dart';
part 'empty_response_model.g.dart';

@freezed
class EmptyResponseModel with _$EmptyResponseModel {
  factory EmptyResponseModel(String result) = _EmptyResponseModel;

  factory EmptyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EmptyResponseModelFromJson(json);
}

extension GetEntity on EmptyResponseModel {
  EmptyResponse toEmptyResponse() => EmptyResponse(result);
}
