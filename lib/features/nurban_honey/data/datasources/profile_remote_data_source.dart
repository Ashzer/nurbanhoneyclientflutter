import 'dart:convert';

import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/empty_response_model/empty_response_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_article_model/profile_article_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_comment_model/profile_comment_model.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/profile_model/profile_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfile(String token);

  Future<List<ProfileArticleModel>> getProfileArticles(
      String token, int offset, int limit);

  Future<List<ProfileCommentModel>> getProfileComments(
      String token, int offset, int limit);

  Future<EmptyResponseModel> requestSignOut(String token, int userId);

  Future<EmptyResponseModel> editProfile(String token, String nickname,
      String description, List<String> insignias);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final http.Client client;
  ProfileRemoteDataSourceImpl({required this.client});
  static String baseUrl = "http://3.37.155.214:8128";

  @override
  Future<EmptyResponseModel> editProfile(String token, String nickname,
      String description, List<String> insignias) async {
    final uri = Uri.parse("$baseUrl/profile/edit");
    final response = await client.patch(uri, headers: {
      'Content-Type': 'application/json',
      'token': token
    }, body: {
      'nickname': nickname,
      'description': description,
      'insignia': insignias
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return EmptyResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<ProfileModel> getProfile(String token) async {
    final uri = Uri.parse("$baseUrl/profile");
    final response = await client.get(uri,
        headers: {'Content-Type': 'application/json', 'token': token});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return ProfileModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<List<ProfileArticleModel>> getProfileArticles(
      String token, int offset, int limit) async {
    final queryParams = {'offset': '$offset', 'limit': '$limit'};
    final uri = Uri.parse("$baseUrl/profile/myarticle")
        .replace(queryParameters: queryParams);
    final response = await client.get(uri,
        headers: {'Content-Type': 'application/json', 'token': token});

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => ProfileArticleModel.fromJson(e)).toList();
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<List<ProfileCommentModel>> getProfileComments(
      String token, int offset, int limit) async {
    final queryParams = {'offset': '$offset', 'limit': '$limit'};
    final uri = Uri.parse("$baseUrl/profile/mycomment")
        .replace(queryParameters: queryParams);
    final response = await client.get(uri,
        headers: {'Content-Type': 'application/json', 'token': token});

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => ProfileCommentModel.fromJson(e)).toList();
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<EmptyResponseModel> requestSignOut(String token, int userId) async {
    final queryParams = {'id': '$userId'};
    final uri = Uri.parse("$baseUrl/profile/withdrawal")
        .replace(queryParameters: queryParams);
    final response = await client.delete(uri,
        headers: {'Content-Type': 'application/json', 'token': token});

    if (response.statusCode == 200 || response.statusCode == 201) {
      return EmptyResponseModel.fromJson(jsonDecode(response.body));
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
