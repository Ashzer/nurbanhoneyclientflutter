import 'dart:convert';
import 'dart:io';

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

  Future<EmptyResponseModel> deleteImages(
      String address, String token, String uuid);
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
    final body = {
      'title': title,
      'uuid': uuid,
      'lossCut': lossCut,
      'thumbnail': thumbnail,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article");
    return _requestHandlerWithBody(uri, client.post, token, body);
  }

  @override
  Future<EmptyResponseModel> postArticle(String address, String token,
      String title, String uuid, String? thumbnail, String content) async {
    final body = {
      'title': title,
      'uuid': uuid,
      'thumbnail': thumbnail,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article");
    return _requestHandlerWithBody(uri, client.post, token, body);
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
    final body = {
      'id': '$articleId',
      'thumbnail': thumbnail,
      'title': title,
      'lossCut': lossCut,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article");
    return _requestHandlerWithBody(uri, client.patch, token, body);
  }

  @override
  Future<EmptyResponseModel> patchArticle(String address, String token,
      int articleId, String? thumbnail, String title, String content) async {
    final body = {
      'id': '$articleId',
      'thumbnail': thumbnail,
      'title': title,
      'content': content
    };

    final uri = Uri.parse("$baseUrl/$address/article");
    return _requestHandlerWithBody(uri, client.patch, token, body);
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
    final uri = Uri.parse("$baseUrl/$address/article/upload/image");
    File imageFile = File(imagePath);
    List<int> imageBytes = imageFile.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);

    final response = await client.post(uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'token': token
        },
        body: jsonEncode({'uuid': uuid, 'image': '$base64Image'}));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return ImagePostResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<EmptyResponseModel> deleteImages(
      String address, String token, String uuid) async {
    final queryParamas = {'uuid': uuid};
    final uri = Uri.parse("$baseUrl/$address/article/upload/image")
        .replace(queryParameters: queryParamas);

    final response = await client.delete(uri,
        headers: {'Content-Type': 'application/json', 'token': token});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return EmptyResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
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

  Future<EmptyResponseModel> _requestHandlerWithBody(Uri uri, Function request,
      String token, Map<String, dynamic> body) async {
    final response = await request(uri,
        headers: {'Content-Type': 'application/json', 'token': token},
        body: body);

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
