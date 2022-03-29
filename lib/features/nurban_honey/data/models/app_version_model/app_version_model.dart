import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/app_version/app_version.dart';

part 'app_version_model.freezed.dart';
part 'app_version_model.g.dart';

@freezed
class AppVersionModel with _$AppVersionModel {
  factory AppVersionModel(String appversion, bool isUpdate) = _AppVersionModel;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);

  factory AppVersionModel.fromAppVersion(AppVersion entity) =>
      AppVersionModel(entity.version, entity.isUpdatable);
}

extension GetEntity on AppVersionModel {
  AppVersion toAppVersion() => AppVersion(appversion, isUpdate);
}
