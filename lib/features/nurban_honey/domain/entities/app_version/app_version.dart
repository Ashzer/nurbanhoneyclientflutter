import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  const factory AppVersion(String version, bool isUpdatable) = _AppVersion;
}
