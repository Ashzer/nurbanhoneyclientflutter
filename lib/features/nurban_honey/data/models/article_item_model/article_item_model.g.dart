// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleItemModel _$$_ArticleItemModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleItemModel(
      json['id'] as int,
      json['thumbnail'] as String,
      json['title'] as String,
      json['commentCount'] as int,
      UserInfo.fromJson(json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleItemModelToJson(_$_ArticleItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'commentCount': instance.commentCount,
      'User': instance.User.toJson(),
    };

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
      json['userId'] as int,
      json['badge'] as String,
      json['nickname'] as String,
      (json['insignia'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'badge': instance.badge,
      'nickname': instance.nickname,
      'insignia': instance.insignia,
    };