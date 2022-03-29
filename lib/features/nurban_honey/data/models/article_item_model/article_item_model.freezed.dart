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

  _ArticleItemModel call(int id, String? thumbnail, String title,
      int commentCount, UserInfo user) {
    return _ArticleItemModel(
      id,
      thumbnail,
      title,
      commentCount,
      user,
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
  String? get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  UserInfo get user => throw _privateConstructorUsedError;

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
      String? thumbnail,
      String title,
      int commentCount,
      UserInfo user});

  $UserInfoCopyWith<$Res> get user;
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
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get user {
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
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
      String? thumbnail,
      String title,
      int commentCount,
      UserInfo user});

  @override
  $UserInfoCopyWith<$Res> get user;
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
    Object? user = freezed,
  }) {
    return _then(_ArticleItemModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleItemModel implements _ArticleItemModel {
  _$_ArticleItemModel(
      this.id, this.thumbnail, this.title, this.commentCount, this.user);

  factory _$_ArticleItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleItemModelFromJson(json);

  @override
  final int id;
  @override
  final String? thumbnail;
  @override
  final String title;
  @override
  final int commentCount;
  @override
  final UserInfo user;

  @override
  String toString() {
    return 'ArticleItemModel(id: $id, thumbnail: $thumbnail, title: $title, commentCount: $commentCount, user: $user)';
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
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(user));

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
  factory _ArticleItemModel(int id, String? thumbnail, String title,
      int commentCount, UserInfo user) = _$_ArticleItemModel;

  factory _ArticleItemModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleItemModel.fromJson;

  @override
  int get id;
  @override
  String? get thumbnail;
  @override
  String get title;
  @override
  int get commentCount;
  @override
  UserInfo get user;
  @override
  @JsonKey(ignore: true)
  _$ArticleItemModelCopyWith<_ArticleItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
