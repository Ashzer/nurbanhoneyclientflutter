import 'dart:convert';

import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/app_version_model/app_version_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/nurban_token_model/nurban_token_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/token_status/token_status_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';

abstract class LoginRemoteDataSource {
  Future<AppVersionModel> isAppUpdatable(String appName);

  Future<NurbanTokenModel> getNurbanToken(
      String loginType, String thirdPartyLoginKey);

  Future<TokenStatusModel> isTokenValid(String nurbanToken);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final http.Client client;
  LoginRemoteDataSourceImpl({required this.client});
  static String baseUrl = "http://3.37.155.214:8128";

  @override
  Future<NurbanTokenModel> getNurbanToken(
      String loginType, String thirdPartyLoginKey) async {
    final queryParams = {'loginType': loginType, 'key': thirdPartyLoginKey};
    final uri =
        Uri.parse("$baseUrl/login").replace(queryParameters: queryParams);
    final response =
        await client.post(uri, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200 || response.statusCode == 201) {
      return NurbanTokenModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<AppVersionModel> isAppUpdatable(String appName) async {
    final queryParams = {'app': appName};
    final uri =
        Uri.parse("$baseUrl/appversion").replace(queryParameters: queryParams);
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return AppVersionModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<TokenStatusModel> isTokenValid(String nurbanToken) async {
    final uri = Uri.parse("$baseUrl/token/exam");
    final response = await client.get(uri,
        headers: {'Content-Type': 'application/json', 'token': nurbanToken});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return TokenStatusModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  _generateExceptions(int responseStatusCode) {
    if (responseStatusCode == 401) {
      throw AuthorizationException();
    } else {
      throw ServerException();
    }
  }
}
