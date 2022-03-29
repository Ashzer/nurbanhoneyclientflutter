import '../models/article_comment_model/article_comment_model.dart';
import '../models/article_detail_model/article_detail_model.dart';
import '../models/article_item_model/article_item_model.dart';
import '../models/article_ratings_model/article_ratings_model.dart';
import '../models/empty_response_model/empty_response_model.dart';

abstract class ArticleRemoteDataSource {
  Future<List<ArticleItemModel>> getArticles(
      String address, int flag, int offset, int limit);

  Future<ArticleDetailModel> getArticle(
      String address, String token, int articleId);

  Future<EmptyResponseModel> postLike(
      String address, String token, int articleId);

  Future<EmptyResponseModel> deleteLike(
      String address, String token, int articleId);

  Future<EmptyResponseModel> postDislike(
      String address, String token, int articleId);

  Future<EmptyResponseModel> deleteDislike(
      String address, String token, int articleId);

  Future<ArticleRatingsModel> getArticleRatings(
      String address, String token, int articleId);

  Future<ArticleCommentModel> getComment(String address, int commentId);

  Future<List<ArticleCommentModel>> getComments(
      String address, int articleId, int offset, int limit);

  Future<EmptyResponseModel> postComment(
      String address, String token, String comment, int articleId);

  Future<EmptyResponseModel> deleteComment(
      String address, String token, int commentId, int articleId);

  Future<EmptyResponseModel> putComment(
      String address, String token, int commentId, String comment);
}
