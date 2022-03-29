// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      json['id'] as int,
      json['loginType'] as String,
      json['badge'] as String,
      json['nickname'] as String,
      json['description'] as String,
      json['point'] as int,
      (json['insigniaShow'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['insigniaOwn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['myArticleCount'] as int,
      json['myCommentCount'] as int,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loginType': instance.loginType,
      'badge': instance.badge,
      'nickname': instance.nickname,
      'description': instance.description,
      'point': instance.point,
      'insigniaShow': instance.insigniaShow,
      'insigniaOwn': instance.insigniaOwn,
      'myArticleCount': instance.myArticleCount,
      'myCommentCount': instance.myCommentCount,
    };
