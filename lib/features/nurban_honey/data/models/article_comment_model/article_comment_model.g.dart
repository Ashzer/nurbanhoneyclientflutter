// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleCommentModel _$$_ArticleCommentModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleCommentModel(
      json['id'] as int,
      json['content'] as String,
      json['articleId'] as int,
      UserInfo.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleCommentModelToJson(
        _$_ArticleCommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'articleId': instance.articleId,
      'user': instance.user.toJson(),
    };
