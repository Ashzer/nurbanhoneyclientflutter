import '../../domain/entities/empty_response/empty_response.dart';
import '../../domain/entities/image_post_response/image_post_response.dart';

abstract class EditorRemoteDataSource {
  Future<EmptyResponse> postNurbanArticle(
      String address,
      String token,
      String title,
      String uuid,
      String lossCut,
      String? thumbnail,
      String content);

  Future<EmptyResponse> postArticle(String address, String token, String title,
      String uuid, String? thumbnail, String content);

  Future<EmptyResponse> putNurbanArticle(
      String address,
      String token,
      int articleId,
      String? thumbnail,
      String title,
      String lossCut,
      String content);

  Future<EmptyResponse> putArticle(String address, String token, int articleId,
      String? thumbnail, String title, String content);

  Future<EmptyResponse> deleteArticle(
      String address, String token, int articleId, String uuid);

  Future<ImagePostResponse> postImage(
      String address, String token, String uuid, String imagePath);
}
