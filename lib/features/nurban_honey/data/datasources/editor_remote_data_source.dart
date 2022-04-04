import 'dart:convert';

import '../../../../core/error/exception.dart';
import '../../domain/entities/empty_response/empty_response.dart';
import '../../domain/entities/image_post_response/image_post_response.dart';
import '../models/empty_response_model/empty_response_model.dart';
import '../models/image_post_response_model/image_post_response_model.dart';
import 'package:http/http.dart' as http;

abstract class EditorRemoteDataSource {
  Future<EmptyResponseModel> postNurbanArticle(
      String address,
      String token,
      String title,
      String uuid,
      String lossCut,
      String? thumbnail,
      String content);

  Future<EmptyResponseModel> postArticle(String address, String token,
      String title, String uuid, String? thumbnail, String content);

  Future<EmptyResponseModel> patchNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content);

  Future<EmptyResponseModel> patchArticle(String address, String token,
      int articleId, String? thumbnail, String title, String content);

  Future<EmptyResponseModel> deleteArticle(
      String address, String token, int articleId, String uuid);

  Future<ImagePostResponseModel> postImage(
      String address, String token, String uuid, String imagePath);
}

class EditorRemoteDataSourceImpl implements EditorRemoteDataSource {
  final http.Client client;
  EditorRemoteDataSourceImpl({required this.client});
  static String baseUrl = "http://3.37.155.214:8128/board";

  @override
  Future<EmptyResponseModel> postNurbanArticle(
      String address,
      String token,
      String title,
      String uuid,
      String lossCut,
      String? thumbnail,
      String content) async {
    final queryParams = {
      'title': title,
      'uuid': uuid,
      'lossCut': BigInt.parse(lossCut),
      'thumbnail': thumbnail,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.post, token);
  }

  @override
  Future<EmptyResponseModel> postArticle(String address, String token,
      String title, String uuid, String? thumbnail, String content) async {
    final queryParams = {
      'title': title,
      'uuid': uuid,
      'thumbnail': thumbnail,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.post, token);
  }

  @override
  Future<EmptyResponseModel> patchNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content) async {
    final queryParams = {
      'id': '$articleId',
      'thumbnail': thumbnail,
      'title': title,
      'lossCut': lossCut,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.patch, token);
  }

  @override
  Future<EmptyResponseModel> patchArticle(String address, String token,
      int articleId, String? thumbnail, String title, String content) async {
    final queryParams = {
      'id': '$articleId',
      'thumbnail': thumbnail,
      'title': title,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.patch, token);
  }

  @override
  Future<EmptyResponseModel> deleteArticle(
      String address, String token, int articleId, String uuid) async {
    final queryParams = {'id': '$articleId', 'uuid': uuid};

    final uri = Uri.parse("$baseUrl/$address/article")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.delete, token);
  }

  @override
  Future<ImagePostResponseModel> postImage(
      String address, String token, String uuid, String imagePath) async {
    return ImagePostResponseModel("");
  }

  Future<EmptyResponseModel> _requestHandler(
      Uri uri, Function request, String token) async {
    final response = await request(
      uri,
      headers: {'Content-Type': 'application/json', 'token': token},
    );

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
