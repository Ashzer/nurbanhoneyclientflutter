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
  Future<EmptyResponseModel> deleteArticle(
      String address, String token, int articleId, String uuid) {
    // TODO: implement deleteArticle
    throw UnimplementedError();
  }

  @override
  Future<EmptyResponseModel> patchArticle(String address, String token,
      int articleId, String? thumbnail, String title, String content) {
    // TODO: implement patchArticle
    throw UnimplementedError();
  }

  @override
  Future<EmptyResponseModel> patchNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content) {
    // TODO: implement patchNurbanArticle
    throw UnimplementedError();
  }

  @override
  Future<EmptyResponseModel> postArticle(String address, String token,
      String title, String uuid, String? thumbnail, String content) {
    // TODO: implement postArticle
    throw UnimplementedError();
  }

  @override
  Future<ImagePostResponseModel> postImage(
      String address, String token, String uuid, String imagePath) {
    // TODO: implement postImage
    throw UnimplementedError();
  }

  @override
  Future<EmptyResponseModel> postNurbanArticle(
      String address,
      String token,
      String title,
      String uuid,
      String lossCut,
      String? thumbnail,
      String content) {
    // TODO: implement postNurbanArticle
    throw UnimplementedError();
  }
}
