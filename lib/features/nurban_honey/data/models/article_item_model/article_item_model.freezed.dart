// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleItemModel _$ArticleItemModelFromJson(Map<String, dynamic> json) {
  return _ArticleItemModel.fromJson(json);
}

/// @nodoc
class _$ArticleItemModelTearOff {
  const _$ArticleItemModelTearOff();

  _ArticleItemModel call(
      int id, String thumbnail, String title, int commentCount, UserInfo User) {
    return _ArticleItemModel(
      id,
      thumbnail,
      title,
      commentCount,
      User,
    );
  }

  ArticleItemModel fromJson(Map<String, Object?> json) {
    return ArticleItemModel.fromJson(json);
  }
}

/// @nodoc
const $ArticleItemModel = _$ArticleItemModelTearOff();

/// @nodoc
mixin _$ArticleItemModel {
  int get id => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  UserInfo get User => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleItemModelCopyWith<ArticleItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleItemModelCopyWith<$Res> {
  factory $ArticleItemModelCopyWith(
          ArticleItemModel value, $Res Function(ArticleItemModel) then) =
      _$ArticleItemModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String thumbnail,
      String title,
      int commentCount,
      UserInfo User});

  $UserInfoCopyWith<$Res> get User;
}

/// @nodoc
class _$ArticleItemModelCopyWithImpl<$Res>
    implements $ArticleItemModelCopyWith<$Res> {
  _$ArticleItemModelCopyWithImpl(this._value, this._then);

  final ArticleItemModel _value;
  // ignore: unused_field
  final $Res Function(ArticleItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? commentCount = freezed,
    Object? User = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      User: User == freezed
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get User {
    return $UserInfoCopyWith<$Res>(_value.User, (value) {
      return _then(_value.copyWith(User: value));
    });
  }
}

/// @nodoc
abstract class _$ArticleItemModelCopyWith<$Res>
    implements $ArticleItemModelCopyWith<$Res> {
  factory _$ArticleItemModelCopyWith(
          _ArticleItemModel value, $Res Function(_ArticleItemModel) then) =
      __$ArticleItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String thumbnail,
      String title,
      int commentCount,
      UserInfo User});

  @override
  $UserInfoCopyWith<$Res> get User;
}

/// @nodoc
class __$ArticleItemModelCopyWithImpl<$Res>
    extends _$ArticleItemModelCopyWithImpl<$Res>
    implements _$ArticleItemModelCopyWith<$Res> {
  __$ArticleItemModelCopyWithImpl(
      _ArticleItemModel _value, $Res Function(_ArticleItemModel) _then)
      : super(_value, (v) => _then(v as _ArticleItemModel));

  @override
  _ArticleItemModel get _value => super._value as _ArticleItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? commentCount = freezed,
    Object? User = freezed,
  }) {
    return _then(_ArticleItemModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      User == freezed
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleItemModel implements _ArticleItemModel {
  _$_ArticleItemModel(
      this.id, this.thumbnail, this.title, this.commentCount, this.User);

  factory _$_ArticleItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleItemModelFromJson(json);

  @override
  final int id;
  @override
  final String thumbnail;
  @override
  final String title;
  @override
  final int commentCount;
  @override
  final UserInfo User;

  @override
  String toString() {
    return 'ArticleItemModel(id: $id, thumbnail: $thumbnail, title: $title, commentCount: $commentCount, User: $User)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.User, User));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(User));

  @JsonKey(ignore: true)
  @override
  _$ArticleItemModelCopyWith<_ArticleItemModel> get copyWith =>
      __$ArticleItemModelCopyWithImpl<_ArticleItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleItemModelToJson(this);
  }
}

abstract class _ArticleItemModel implements ArticleItemModel {
  factory _ArticleItemModel(int id, String thumbnail, String title,
      int commentCount, UserInfo User) = _$_ArticleItemModel;

  factory _ArticleItemModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleItemModel.fromJson;

  @override
  int get id;
  @override
  String get thumbnail;
  @override
  String get title;
  @override
  int get commentCount;
  @override
  UserInfo get User;
  @override
  @JsonKey(ignore: true)
  _$ArticleItemModelCopyWith<_ArticleItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
class _$UserInfoTearOff {
  const _$UserInfoTearOff();

  _UserInfo call(
      int userId, String badge, String nickname, List<String> insignia) {
    return _UserInfo(
      userId,
      badge,
      nickname,
      insignia,
    );
  }

  UserInfo fromJson(Map<String, Object?> json) {
    return UserInfo.fromJson(json);
  }
}

/// @nodoc
const $UserInfo = _$UserInfoTearOff();

/// @nodoc
mixin _$UserInfo {
  int get userId => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<String> get insignia => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res>;
  $Res call({int userId, String badge, String nickname, List<String> insignia});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res> implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  final UserInfo _value;
  // ignore: unused_field
  final $Res Function(UserInfo) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignia = freezed,
  }) {
    return _then(_value.copyWith(
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
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) then) =
      __$UserInfoCopyWithImpl<$Res>;
  @override
  $Res call({int userId, String badge, String nickname, List<String> insignia});
}

/// @nodoc
class __$UserInfoCopyWithImpl<$Res> extends _$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(_UserInfo _value, $Res Function(_UserInfo) _then)
      : super(_value, (v) => _then(v as _UserInfo));

  @override
  _UserInfo get _value => super._value as _UserInfo;

  @override
  $Res call({
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignia = freezed,
  }) {
    return _then(_UserInfo(
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
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfo implements _UserInfo {
  _$_UserInfo(this.userId, this.badge, this.nickname, this.insignia);

  factory _$_UserInfo.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoFromJson(json);

  @override
  final int userId;
  @override
  final String badge;
  @override
  final String nickname;
  @override
  final List<String> insignia;

  @override
  String toString() {
    return 'UserInfo(userId: $userId, badge: $badge, nickname: $nickname, insignia: $insignia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfo &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.badge, badge) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.insignia, insignia));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(badge),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(insignia));

  @JsonKey(ignore: true)
  @override
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoToJson(this);
  }
}

abstract class _UserInfo implements UserInfo {
  factory _UserInfo(
          int userId, String badge, String nickname, List<String> insignia) =
      _$_UserInfo;

  factory _UserInfo.fromJson(Map<String, dynamic> json) = _$_UserInfo.fromJson;

  @override
  int get userId;
  @override
  String get badge;
  @override
  String get nickname;
  @override
  List<String> get insignia;
  @override
  @JsonKey(ignore: true)
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
