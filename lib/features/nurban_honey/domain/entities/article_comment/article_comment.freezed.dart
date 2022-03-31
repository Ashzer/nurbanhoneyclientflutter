// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleCommentTearOff {
  const _$ArticleCommentTearOff();

  _ArticleComment call(int commentId, String comment, int articleId, int userId,
      String badge, String nickname, List<String> insignias) {
    return _ArticleComment(
      commentId,
      comment,
      articleId,
      userId,
      badge,
      nickname,
      insignias,
    );
  }
}

/// @nodoc
const $ArticleComment = _$ArticleCommentTearOff();

/// @nodoc
mixin _$ArticleComment {
  int get commentId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get articleId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<String> get insignias => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCommentCopyWith<ArticleComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCommentCopyWith<$Res> {
  factory $ArticleCommentCopyWith(
          ArticleComment value, $Res Function(ArticleComment) then) =
      _$ArticleCommentCopyWithImpl<$Res>;
  $Res call(
      {int commentId,
      String comment,
      int articleId,
      int userId,
      String badge,
      String nickname,
      List<String> insignias});
}

/// @nodoc
class _$ArticleCommentCopyWithImpl<$Res>
    implements $ArticleCommentCopyWith<$Res> {
  _$ArticleCommentCopyWithImpl(this._value, this._then);

  final ArticleComment _value;
  // ignore: unused_field
  final $Res Function(ArticleComment) _then;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? comment = freezed,
    Object? articleId = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignias = freezed,
  }) {
    return _then(_value.copyWith(
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
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
      insignias: insignias == freezed
          ? _value.insignias
          : insignias // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCommentCopyWith<$Res>
    implements $ArticleCommentCopyWith<$Res> {
  factory _$ArticleCommentCopyWith(
          _ArticleComment value, $Res Function(_ArticleComment) then) =
      __$ArticleCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int commentId,
      String comment,
      int articleId,
      int userId,
      String badge,
      String nickname,
      List<String> insignias});
}

/// @nodoc
class __$ArticleCommentCopyWithImpl<$Res>
    extends _$ArticleCommentCopyWithImpl<$Res>
    implements _$ArticleCommentCopyWith<$Res> {
  __$ArticleCommentCopyWithImpl(
      _ArticleComment _value, $Res Function(_ArticleComment) _then)
      : super(_value, (v) => _then(v as _ArticleComment));

  @override
  _ArticleComment get _value => super._value as _ArticleComment;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? comment = freezed,
    Object? articleId = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignias = freezed,
  }) {
    return _then(_ArticleComment(
      commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
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
      insignias == freezed
          ? _value.insignias
          : insignias // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ArticleComment implements _ArticleComment {
  const _$_ArticleComment(this.commentId, this.comment, this.articleId,
      this.userId, this.badge, this.nickname, this.insignias);

  @override
  final int commentId;
  @override
  final String comment;
  @override
  final int articleId;
  @override
  final int userId;
  @override
  final String badge;
  @override
  final String nickname;
  @override
  final List<String> insignias;

  @override
  String toString() {
    return 'ArticleComment(commentId: $commentId, comment: $comment, articleId: $articleId, userId: $userId, badge: $badge, nickname: $nickname, insignias: $insignias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleComment &&
            const DeepCollectionEquality().equals(other.commentId, commentId) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.badge, badge) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.insignias, insignias));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(commentId),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(badge),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(insignias));

  @JsonKey(ignore: true)
  @override
  _$ArticleCommentCopyWith<_ArticleComment> get copyWith =>
      __$ArticleCommentCopyWithImpl<_ArticleComment>(this, _$identity);
}

abstract class _ArticleComment implements ArticleComment {
  const factory _ArticleComment(
      int commentId,
      String comment,
      int articleId,
      int userId,
      String badge,
      String nickname,
      List<String> insignias) = _$_ArticleComment;

  @override
  int get commentId;
  @override
  String get comment;
  @override
  int get articleId;
  @override
  int get userId;
  @override
  String get badge;
  @override
  String get nickname;
  @override
  List<String> get insignias;
  @override
  @JsonKey(ignore: true)
  _$ArticleCommentCopyWith<_ArticleComment> get copyWith =>
      throw _privateConstructorUsedError;
}
