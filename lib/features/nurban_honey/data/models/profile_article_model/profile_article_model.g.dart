// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileArticleModel _$$_ProfileArticleModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileArticleModel(
      json['id'] as int,
      json['thumbnail'] as String?,
      json['title'] as String,
      json['commentCount'] as int,
      json['createdAt'] as String,
      BoardInfoModel.fromJson(json['board'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileArticleModelToJson(
        _$_ProfileArticleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'commentCount': instance.commentCount,
      'createdAt': instance.createdAt,
      'board': instance.board.toJson(),
    };
