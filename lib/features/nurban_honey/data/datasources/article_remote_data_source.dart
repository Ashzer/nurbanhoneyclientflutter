import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:nurbanhoney_flutter/core/error/exception.dart';
import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/user_info.dart';

import '../models/article_comment_model/article_comment_model.dart';
import '../models/article_detail_model/article_detail_model.dart';
import '../models/article_item_model/article_item_model.dart';
import '../models/article_ratings_model/article_ratings_model.dart';
import '../models/empty_response_model/empty_response_model.dart';
import 'package:http/http.dart' as http;

abstract class ArticleRemoteDataSource {
  Future<List<ArticleItemModel>> getArticles(
      String address, int flag, int offset, int limit);

  Future<ArticleDetailModel> getArticle(String address, int articleId);

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

  Future<EmptyResponseModel> patchComment(
      String address, String token, int commentId, String comment);
}

class ArticleRemoteDataSourceImpl implements ArticleRemoteDataSource {
  final http.Client client;
  ArticleRemoteDataSourceImpl({required this.client});
  static String baseUrl = "http://3.37.155.214:8128/board";

  @override
  Future<List<ArticleItemModel>> getArticles(
      String address, int flag, int offset, int limit) async {
    final queryParams = {
      'flag': '$flag',
      'offset': '$offset',
      'limit': '$limit'
    };
    final uri =
        Uri.parse("$baseUrl/$address").replace(queryParameters: queryParams);
    final response = await client.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => ArticleItemModel.fromJson(e)).toList();
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<ArticleDetailModel> getArticle(String address, int articleId) async {
    final queryParams = {
      'id': '$articleId',
    };
    final uri = Uri.parse("$baseUrl/$address/article")
        .replace(queryParameters: queryParams);
    final response = await client.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return ArticleDetailModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<EmptyResponseModel> postLike(
      String address, String token, int articleId) async {
    final queryParams = {'articleId': '$articleId'};
    final uri = Uri.parse("$baseUrl/$address/article/like")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.post, token);
  }

  @override
  Future<EmptyResponseModel> deleteLike(
      String address, String token, int articleId) async {
    final queryParams = {'articleId': '$articleId'};
    final uri = Uri.parse("$baseUrl/$address/article/like")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.delete, token);
  }

  @override
  Future<EmptyResponseModel> postDislike(
      String address, String token, int articleId) async {
    final queryParams = {'articleId': '$articleId'};
    final uri = Uri.parse("$baseUrl/$address/article/dislike")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.post, token);
  }

  @override
  Future<EmptyResponseModel> deleteDislike(
      String address, String token, int articleId) async {
    final queryParams = {'articleId': '$articleId'};
    final uri = Uri.parse("$baseUrl/$address/article/dislike")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.delete, token);
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

  @override
  Future<ArticleRatingsModel> getArticleRatings(
      String address, String token, int articleId) async {
    final queryParams = {'articleId': '$articleId'};
    final uri = Uri.parse("$baseUrl/$address/article/myrating")
        .replace(queryParameters: queryParams);
    final response = await client.get(
      uri,
      headers: {'Content-Type': 'application/json', 'token': token},
    );

    if (response.statusCode == 200) {
      return ArticleRatingsModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<ArticleCommentModel> getComment(String address, int commentId) async {
    final queryParams = {'commentId': '$commentId'};
    final uri = Uri.parse("$baseUrl/$address/article/comment/detail")
        .replace(queryParameters: queryParams);
    final response = await client.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return ArticleCommentModel.fromJson(jsonDecode(response.body));
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<List<ArticleCommentModel>> getComments(
      String address, int articleId, int offset, int limit) async {
    final queryParams = {
      'articleId': '$articleId',
      'offset': '$offset',
      'limit': '$limit'
    };
    final uri = Uri.parse("$baseUrl/$address/article/comment")
        .replace(queryParameters: queryParams);
    final response = await client.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => ArticleCommentModel.fromJson(e)).toList();
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  @override
  Future<EmptyResponseModel> postComment(
      String address, String token, String comment, int articleId) async {
    final queryParams = {'content': '$comment', 'articleId': '$articleId'};
    final uri = Uri.parse("$baseUrl/$address/article/comment")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.post, token);
  }

  @override
  Future<EmptyResponseModel> deleteComment(
      String address, String token, int commentId, int articleId) async {
    final queryParams = {'id': '$commentId', 'articleId': '$articleId'};
    final uri = Uri.parse("$baseUrl/$address/article/comment")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.delete, token);
  }

  @override
  Future<EmptyResponseModel> patchComment(
      String address, String token, int commentId, String comment) async {
    final queryParams = {'id': '$commentId', 'content': '$comment'};
    final uri = Uri.parse("$baseUrl/$address/article/comment")
        .replace(queryParameters: queryParams);
    return _requestHandler(uri, client.patch, token);
  }

  _generateExceptions(int responseStatusCode) {
    if (responseStatusCode == 401) {
      throw AuthorizationException();
    } else {
      throw ServerException();
    }
  }
}
