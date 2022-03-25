// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileArticleTearOff {
  const _$ProfileArticleTearOff();

  _ProfileArticle call(int articleId, int boardId, String boardName,
      String boardAddress, String title, String comments, String createAt) {
    return _ProfileArticle(
      articleId,
      boardId,
      boardName,
      boardAddress,
      title,
      comments,
      createAt,
    );
  }
}

/// @nodoc
const $ProfileArticle = _$ProfileArticleTearOff();

/// @nodoc
mixin _$ProfileArticle {
  int get articleId => throw _privateConstructorUsedError;
  int get boardId => throw _privateConstructorUsedError;
  String get boardName => throw _privateConstructorUsedError;
  String get boardAddress => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;
  String get createAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileArticleCopyWith<ProfileArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileArticleCopyWith<$Res> {
  factory $ProfileArticleCopyWith(
          ProfileArticle value, $Res Function(ProfileArticle) then) =
      _$ProfileArticleCopyWithImpl<$Res>;
  $Res call(
      {int articleId,
      int boardId,
      String boardName,
      String boardAddress,
      String title,
      String comments,
      String createAt});
}

/// @nodoc
class _$ProfileArticleCopyWithImpl<$Res>
    implements $ProfileArticleCopyWith<$Res> {
  _$ProfileArticleCopyWithImpl(this._value, this._then);

  final ProfileArticle _value;
  // ignore: unused_field
  final $Res Function(ProfileArticle) _then;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? boardId = freezed,
    Object? boardName = freezed,
    Object? boardAddress = freezed,
    Object? title = freezed,
    Object? comments = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
      boardId: boardId == freezed
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      boardAddress: boardAddress == freezed
          ? _value.boardAddress
          : boardAddress // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileArticleCopyWith<$Res>
    implements $ProfileArticleCopyWith<$Res> {
  factory _$ProfileArticleCopyWith(
          _ProfileArticle value, $Res Function(_ProfileArticle) then) =
      __$ProfileArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int articleId,
      int boardId,
      String boardName,
      String boardAddress,
      String title,
      String comments,
      String createAt});
}

/// @nodoc
class __$ProfileArticleCopyWithImpl<$Res>
    extends _$ProfileArticleCopyWithImpl<$Res>
    implements _$ProfileArticleCopyWith<$Res> {
  __$ProfileArticleCopyWithImpl(
      _ProfileArticle _value, $Res Function(_ProfileArticle) _then)
      : super(_value, (v) => _then(v as _ProfileArticle));

  @override
  _ProfileArticle get _value => super._value as _ProfileArticle;

  @override
  $Res call({
    Object? articleId = freezed,
    Object? boardId = freezed,
    Object? boardName = freezed,
    Object? boardAddress = freezed,
    Object? title = freezed,
    Object? comments = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_ProfileArticle(
      articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as int,
      boardId == freezed
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as int,
      boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      boardAddress == freezed
          ? _value.boardAddress
          : boardAddress // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileArticle implements _ProfileArticle {
  const _$_ProfileArticle(this.articleId, this.boardId, this.boardName,
      this.boardAddress, this.title, this.comments, this.createAt);

  @override
  final int articleId;
  @override
  final int boardId;
  @override
  final String boardName;
  @override
  final String boardAddress;
  @override
  final String title;
  @override
  final String comments;
  @override
  final String createAt;

  @override
  String toString() {
    return 'ProfileArticle(articleId: $articleId, boardId: $boardId, boardName: $boardName, boardAddress: $boardAddress, title: $title, comments: $comments, createAt: $createAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileArticle &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.boardId, boardId) &&
            const DeepCollectionEquality().equals(other.boardName, boardName) &&
            const DeepCollectionEquality()
                .equals(other.boardAddress, boardAddress) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality().equals(other.createAt, createAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(boardId),
      const DeepCollectionEquality().hash(boardName),
      const DeepCollectionEquality().hash(boardAddress),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(createAt));

  @JsonKey(ignore: true)
  @override
  _$ProfileArticleCopyWith<_ProfileArticle> get copyWith =>
      __$ProfileArticleCopyWithImpl<_ProfileArticle>(this, _$identity);
}

abstract class _ProfileArticle implements ProfileArticle {
  const factory _ProfileArticle(
      int articleId,
      int boardId,
      String boardName,
      String boardAddress,
      String title,
      String comments,
      String createAt) = _$_ProfileArticle;

  @override
  int get articleId;
  @override
  int get boardId;
  @override
  String get boardName;
  @override
  String get boardAddress;
  @override
  String get title;
  @override
  String get comments;
  @override
  String get createAt;
  @override
  @JsonKey(ignore: true)
  _$ProfileArticleCopyWith<_ProfileArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
