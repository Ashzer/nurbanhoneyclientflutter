import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/location/location.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel(int articleId, String title) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

extension GetEntity on LocationModel {
  Location toLocation() => Location(articleId, title);
}
