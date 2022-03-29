// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleItemModel _$$_ArticleItemModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleItemModel(
      json['id'] as int,
      json['thumbnail'] as String?,
      json['title'] as String,
      json['commentCount'] as int,
      UserInfo.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleItemModelToJson(_$_ArticleItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'commentCount': instance.commentCount,
      'user': instance.user.toJson(),
    };
