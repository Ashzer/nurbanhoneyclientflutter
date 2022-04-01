// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileCommentModel _$$_ProfileCommentModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileCommentModel(
      json['id'] as int,
      json['content'] as String,
      json['createdAt'] as String,
      LocationModel.fromJson(json['Location'] as Map<String, dynamic>),
      BoardInfoModel.fromJson(json['board'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileCommentModelToJson(
        _$_ProfileCommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'Location': instance.Location.toJson(),
      'board': instance.board.toJson(),
    };
