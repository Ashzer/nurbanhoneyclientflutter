// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleItemTearOff {
  const _$ArticleItemTearOff();

  _ArticleItem call(
      int articleId,
      String thumbnail,
      String title,
      String replies,
      int userId,
      String badges,
      String nickname,
      List<String> insignias) {
    return _ArticleItem(
      articleId,
      thumbnail,
      title,
      replies,
      userId,
      badges,
      nickname,
      insignias,
    );
  }
}

/// @nodoc
const $ArticleItem = _$ArticleItemTearOff();

/// @nodoc
mixin _$ArticleItem {
  int get articleId => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get replies => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get badges => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<String> get insignias => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleItemCopyWith<ArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleItemCopyWith<$Res> {
  factory $ArticleItemCopyWith(
          ArticleItem value, $Res Function(ArticleItem) then) =
      _$ArticleItemCopyWithImpl<$Res>;
  $Res call(
      {int articleId,
      String thumbnail,
      String title,
      String replies,
      int userId,
      String badges,
      String nickname,
      List<String> insignias});
}

/// @nodoc
class _$ArticleItemCopyWithImpl<$Res> implements $ArticleItemCopyWith<$Res> {
  _$ArticleItemCopyWithImpl(this._value, this._then);

  final ArticleItem _value;
  // ignore: unused_field
  final $Res Function(ArticleItem) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? replies = freezed,
    Object? userId = freezed,
    Object? badges = freezed,
    Object? nickname = freezed,
    Object? insignias = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      replies: replies == freezed
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      badges: badges == freezed
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
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
abstract class _$ArticleItemCopyWith<$Res>
    implements $ArticleItemCopyWith<$Res> {
  factory _$ArticleItemCopyWith(
          _ArticleItem value, $Res Function(_ArticleItem) then) =
      __$ArticleItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int articleId,
      String thumbnail,
      String title,
      String replies,
      int userId,
      String badges,
      String nickname,
      List<String> insignias});
}

/// @nodoc
class __$ArticleItemCopyWithImpl<$Res> extends _$ArticleItemCopyWithImpl<$Res>
    implements _$ArticleItemCopyWith<$Res> {
  __$ArticleItemCopyWithImpl(
      _ArticleItem _value, $Res Function(_ArticleItem) _then)
      : super(_value, (v) => _then(v as _ArticleItem));

  @override
  _ArticleItem get _value => super._value as _ArticleItem;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? replies = freezed,
    Object? userId = freezed,
    Object? badges = freezed,
    Object? nickname = freezed,
    Object? insignias = freezed,
  }) {
    return _then(_ArticleItem(
      articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      replies == freezed
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      badges == freezed
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
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

class _$_ArticleItem with DiagnosticableTreeMixin implements _ArticleItem {
  _$_ArticleItem(this.articleId, this.thumbnail, this.title, this.replies,
      this.userId, this.badges, this.nickname, this.insignias);

  @override
  final int articleId;
  @override
  final String thumbnail;
  @override
  final String title;
  @override
  final String replies;
  @override
  final int userId;
  @override
  final String badges;
  @override
  final String nickname;
  @override
  final List<String> insignias;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticleItem(articleId: $articleId, thumbnail: $thumbnail, title: $title, replies: $replies, userId: $userId, badges: $badges, nickname: $nickname, insignias: $insignias)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticleItem'))
      ..add(DiagnosticsProperty('articleId', articleId))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('replies', replies))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('badges', badges))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('insignias', insignias));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleItem &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.replies, replies) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.badges, badges) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.insignias, insignias));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(replies),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(badges),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(insignias));

  @JsonKey(ignore: true)
  @override
  _$ArticleItemCopyWith<_ArticleItem> get copyWith =>
      __$ArticleItemCopyWithImpl<_ArticleItem>(this, _$identity);
}

abstract class _ArticleItem implements ArticleItem {
  factory _ArticleItem(
      int articleId,
      String thumbnail,
      String title,
      String replies,
      int userId,
      String badges,
      String nickname,
      List<String> insignias) = _$_ArticleItem;

  @override
  int get articleId;
  @override
  String get thumbnail;
  @override
  String get title;
  @override
  String get replies;
  @override
  int get userId;
  @override
  String get badges;
  @override
  String get nickname;
  @override
  List<String> get insignias;
  @override
  @JsonKey(ignore: true)
  _$ArticleItemCopyWith<_ArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
