// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_ratings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleRatingsModel _$$_ArticleRatingsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleRatingsModel(
      json['id'] as int,
      json['likeCount'] as int,
      json['dislikeCount'] as int,
      json['myRating'] as String?,
    );

Map<String, dynamic> _$$_ArticleRatingsModelToJson(
        _$_ArticleRatingsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'myRating': instance.myRating,
    };
