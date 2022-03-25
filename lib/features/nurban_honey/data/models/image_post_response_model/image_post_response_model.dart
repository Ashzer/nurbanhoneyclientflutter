import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/domain/entities/image_post_response/image_post_response.dart';

part 'image_post_response_model.freezed.dart';
part 'image_post_response_model.g.dart';

@freezed
class ImagePostResponseModel with _$ImagePostResponseModel {
  factory ImagePostResponseModel(String result) = _ImagePostResponseModel;

  factory ImagePostResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImagePostResponseModelFromJson(json);
}

extension GetEntity on ImagePostResponseModel {
  ImagePostResponse toImagePostResponse() =>
      ImagePostResponse(Uri.tryParse(result) ?? Uri());
}
