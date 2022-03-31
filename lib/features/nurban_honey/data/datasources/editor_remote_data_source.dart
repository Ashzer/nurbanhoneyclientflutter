import '../../domain/entities/empty_response/empty_response.dart';
import '../../domain/entities/image_post_response/image_post_response.dart';
import '../models/empty_response_model/empty_response_model.dart';
import '../models/image_post_response_model/image_post_response_model.dart';

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

  Future<EmptyResponseModel> putNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content);

  Future<EmptyResponseModel> putArticle(String address, String token,
      int articleId, String? thumbnail, String title, String content);

  Future<EmptyResponseModel> deleteArticle(
      String address, String token, int articleId, String uuid);

  Future<ImagePostResponseModel> postImage(
      String address, String token, String uuid, String imagePath);
}
