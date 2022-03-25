// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
      json['userId'] as int,
      json['badge'] as String,
      json['nickname'] as String,
      (json['insignia'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'badge': instance.badge,
      'nickname': instance.nickname,
      'insignia': instance.insignia,
    };
