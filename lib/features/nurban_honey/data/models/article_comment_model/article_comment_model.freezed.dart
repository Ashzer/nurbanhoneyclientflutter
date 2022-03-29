// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleCommentModel _$ArticleCommentModelFromJson(Map<String, dynamic> json) {
  return _ArticleCommentModel.fromJson(json);
}

/// @nodoc
class _$ArticleCommentModelTearOff {
  const _$ArticleCommentModelTearOff();

  _ArticleCommentModel call(
      int id, String content, int articleId, UserInfo user) {
    return _ArticleCommentModel(
      id,
      content,
      articleId,
      user,
    );
  }

  ArticleCommentModel fromJson(Map<String, Object?> json) {
    return ArticleCommentModel.fromJson(json);
  }
}

/// @nodoc
const $ArticleCommentModel = _$ArticleCommentModelTearOff();

/// @nodoc
mixin _$ArticleCommentModel {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get articleId => throw _privateConstructorUsedError;
  UserInfo get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCommentModelCopyWith<ArticleCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCommentModelCopyWith<$Res> {
  factory $ArticleCommentModelCopyWith(
          ArticleCommentModel value, $Res Function(ArticleCommentModel) then) =
      _$ArticleCommentModelCopyWithImpl<$Res>;
  $Res call({int id, String content, int articleId, UserInfo user});

  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$ArticleCommentModelCopyWithImpl<$Res>
    implements $ArticleCommentModelCopyWith<$Res> {
  _$ArticleCommentModelCopyWithImpl(this._value, this._then);

  final ArticleCommentModel _value;
  // ignore: unused_field
  final $Res Function(ArticleCommentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? articleId = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
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
abstract class _$ArticleCommentModelCopyWith<$Res>
    implements $ArticleCommentModelCopyWith<$Res> {
  factory _$ArticleCommentModelCopyWith(_ArticleCommentModel value,
          $Res Function(_ArticleCommentModel) then) =
      __$ArticleCommentModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String content, int articleId, UserInfo user});

  @override
  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$ArticleCommentModelCopyWithImpl<$Res>
    extends _$ArticleCommentModelCopyWithImpl<$Res>
    implements _$ArticleCommentModelCopyWith<$Res> {
  __$ArticleCommentModelCopyWithImpl(
      _ArticleCommentModel _value, $Res Function(_ArticleCommentModel) _then)
      : super(_value, (v) => _then(v as _ArticleCommentModel));

  @override
  _ArticleCommentModel get _value => super._value as _ArticleCommentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? articleId = freezed,
    Object? user = freezed,
  }) {
    return _then(_ArticleCommentModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
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
class _$_ArticleCommentModel implements _ArticleCommentModel {
  _$_ArticleCommentModel(this.id, this.content, this.articleId, this.user);

  factory _$_ArticleCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleCommentModelFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final int articleId;
  @override
  final UserInfo user;

  @override
  String toString() {
    return 'ArticleCommentModel(id: $id, content: $content, articleId: $articleId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleCommentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ArticleCommentModelCopyWith<_ArticleCommentModel> get copyWith =>
      __$ArticleCommentModelCopyWithImpl<_ArticleCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleCommentModelToJson(this);
  }
}

abstract class _ArticleCommentModel implements ArticleCommentModel {
  factory _ArticleCommentModel(
          int id, String content, int articleId, UserInfo user) =
      _$_ArticleCommentModel;

  factory _ArticleCommentModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleCommentModel.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  int get articleId;
  @override
  UserInfo get user;
  @override
  @JsonKey(ignore: true)
  _$ArticleCommentModelCopyWith<_ArticleCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
