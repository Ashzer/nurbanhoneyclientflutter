// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleDetailModel _$$_ArticleDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleDetailModel(
      json['id'] as int,
      json['uuid'] as String,
      json['thumbnail'] as String?,
      json['title'] as String,
      json['lossCut'] as int,
      json['content'] as String,
      json['count'] as int,
      json['commentCount'] as int,
      json['likeCount'] as int,
      json['dislikeCount'] as int,
      json['updatedAt'] as String,
      json['userId'] as int,
      json['badge'] as String,
      json['nickname'] as String,
      (json['insignia'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['myRating'] as String?,
    );

Map<String, dynamic> _$$_ArticleDetailModelToJson(
        _$_ArticleDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'lossCut': instance.lossCut,
      'content': instance.content,
      'count': instance.count,
      'commentCount': instance.commentCount,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
      'badge': instance.badge,
      'nickname': instance.nickname,
      'insignia': instance.insignia,
      'myRating': instance.myRating,
    };
