// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleDetailModel _$ArticleDetailModelFromJson(Map<String, dynamic> json) {
  return _ArticleDetailModel.fromJson(json);
}

/// @nodoc
class _$ArticleDetailModelTearOff {
  const _$ArticleDetailModelTearOff();

  _ArticleDetailModel call(
      int id,
      String uuid,
      String? thumbnail,
      String title,
      int lossCut,
      String content,
      int count,
      int commentCount,
      int likeCount,
      int dislikeCount,
      String updatedAt,
      int userId,
      String badge,
      String nickname,
      List<String>? insignia,
      String? myRating) {
    return _ArticleDetailModel(
      id,
      uuid,
      thumbnail,
      title,
      lossCut,
      content,
      count,
      commentCount,
      likeCount,
      dislikeCount,
      updatedAt,
      userId,
      badge,
      nickname,
      insignia,
      myRating,
    );
  }

  ArticleDetailModel fromJson(Map<String, Object?> json) {
    return ArticleDetailModel.fromJson(json);
  }
}

/// @nodoc
const $ArticleDetailModel = _$ArticleDetailModelTearOff();

/// @nodoc
mixin _$ArticleDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get lossCut => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get dislikeCount => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<String>? get insignia => throw _privateConstructorUsedError;
  String? get myRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDetailModelCopyWith<ArticleDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDetailModelCopyWith<$Res> {
  factory $ArticleDetailModelCopyWith(
          ArticleDetailModel value, $Res Function(ArticleDetailModel) then) =
      _$ArticleDetailModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String? thumbnail,
      String title,
      int lossCut,
      String content,
      int count,
      int commentCount,
      int likeCount,
      int dislikeCount,
      String updatedAt,
      int userId,
      String badge,
      String nickname,
      List<String>? insignia,
      String? myRating});
}

/// @nodoc
class _$ArticleDetailModelCopyWithImpl<$Res>
    implements $ArticleDetailModelCopyWith<$Res> {
  _$ArticleDetailModelCopyWithImpl(this._value, this._then);

  final ArticleDetailModel _value;
  // ignore: unused_field
  final $Res Function(ArticleDetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? lossCut = freezed,
    Object? content = freezed,
    Object? count = freezed,
    Object? commentCount = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignia = freezed,
    Object? myRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lossCut: lossCut == freezed
          ? _value.lossCut
          : lossCut // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      badge: badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      insignia: insignia == freezed
          ? _value.insignia
          : insignia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      myRating: myRating == freezed
          ? _value.myRating
          : myRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ArticleDetailModelCopyWith<$Res>
    implements $ArticleDetailModelCopyWith<$Res> {
  factory _$ArticleDetailModelCopyWith(
          _ArticleDetailModel value, $Res Function(_ArticleDetailModel) then) =
      __$ArticleDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String? thumbnail,
      String title,
      int lossCut,
      String content,
      int count,
      int commentCount,
      int likeCount,
      int dislikeCount,
      String updatedAt,
      int userId,
      String badge,
      String nickname,
      List<String>? insignia,
      String? myRating});
}

/// @nodoc
class __$ArticleDetailModelCopyWithImpl<$Res>
    extends _$ArticleDetailModelCopyWithImpl<$Res>
    implements _$ArticleDetailModelCopyWith<$Res> {
  __$ArticleDetailModelCopyWithImpl(
      _ArticleDetailModel _value, $Res Function(_ArticleDetailModel) _then)
      : super(_value, (v) => _then(v as _ArticleDetailModel));

  @override
  _ArticleDetailModel get _value => super._value as _ArticleDetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? lossCut = freezed,
    Object? content = freezed,
    Object? count = freezed,
    Object? commentCount = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignia = freezed,
    Object? myRating = freezed,
  }) {
    return _then(_ArticleDetailModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lossCut == freezed
          ? _value.lossCut
          : lossCut // ignore: cast_nullable_to_non_nullable
              as int,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String,
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      insignia == freezed
          ? _value.insignia
          : insignia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      myRating == freezed
          ? _value.myRating
          : myRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleDetailModel implements _ArticleDetailModel {
  _$_ArticleDetailModel(
      this.id,
      this.uuid,
      this.thumbnail,
      this.title,
      this.lossCut,
      this.content,
      this.count,
      this.commentCount,
      this.likeCount,
      this.dislikeCount,
      this.updatedAt,
      this.userId,
      this.badge,
      this.nickname,
      this.insignia,
      this.myRating);

  factory _$_ArticleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleDetailModelFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String? thumbnail;
  @override
  final String title;
  @override
  final int lossCut;
  @override
  final String content;
  @override
  final int count;
  @override
  final int commentCount;
  @override
  final int likeCount;
  @override
  final int dislikeCount;
  @override
  final String updatedAt;
  @override
  final int userId;
  @override
  final String badge;
  @override
  final String nickname;
  @override
  final List<String>? insignia;
  @override
  final String? myRating;

  @override
  String toString() {
    return 'ArticleDetailModel(id: $id, uuid: $uuid, thumbnail: $thumbnail, title: $title, lossCut: $lossCut, content: $content, count: $count, commentCount: $commentCount, likeCount: $likeCount, dislikeCount: $dislikeCount, updatedAt: $updatedAt, userId: $userId, badge: $badge, nickname: $nickname, insignia: $insignia, myRating: $myRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleDetailModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.lossCut, lossCut) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.dislikeCount, dislikeCount) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.badge, badge) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.insignia, insignia) &&
            const DeepCollectionEquality().equals(other.myRating, myRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(lossCut),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(dislikeCount),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(badge),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(insignia),
      const DeepCollectionEquality().hash(myRating));

  @JsonKey(ignore: true)
  @override
  _$ArticleDetailModelCopyWith<_ArticleDetailModel> get copyWith =>
      __$ArticleDetailModelCopyWithImpl<_ArticleDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleDetailModelToJson(this);
  }
}

abstract class _ArticleDetailModel implements ArticleDetailModel {
  factory _ArticleDetailModel(
      int id,
      String uuid,
      String? thumbnail,
      String title,
      int lossCut,
      String content,
      int count,
      int commentCount,
      int likeCount,
      int dislikeCount,
      String updatedAt,
      int userId,
      String badge,
      String nickname,
      List<String>? insignia,
      String? myRating) = _$_ArticleDetailModel;

  factory _ArticleDetailModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleDetailModel.fromJson;

  @override
  int get id;
  @override
  String get uuid;
  @override
  String? get thumbnail;
  @override
  String get title;
  @override
  int get lossCut;
  @override
  String get content;
  @override
  int get count;
  @override
  int get commentCount;
  @override
  int get likeCount;
  @override
  int get dislikeCount;
  @override
  String get updatedAt;
  @override
  int get userId;
  @override
  String get badge;
  @override
  String get nickname;
  @override
  List<String>? get insignia;
  @override
  String? get myRating;
  @override
  @JsonKey(ignore: true)
  _$ArticleDetailModelCopyWith<_ArticleDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
