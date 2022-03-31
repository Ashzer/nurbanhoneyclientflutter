import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/app_version_model/app_version_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/nurban_token_model/nurban_token_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/token_status/token_status_model.dart';

abstract class LoginRemoteDataSource {
  Future<AppVersionModel> isAppUpdatable(String appName);

  Future<NurbanTokenModel> getNurbanToken(
      String loginType, String thirdPartyLoginKey);

  Future<TokenStatusModel> isTokenValid(String nurbanToken);
}
