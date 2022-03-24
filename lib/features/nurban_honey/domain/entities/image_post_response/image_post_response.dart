import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_post_response.freezed.dart';

@freezed
class ImagePostResponse with _$ImagePostResponse {
  const factory ImagePostResponse(Uri imageUri) = _ImagePostResponse;
}
