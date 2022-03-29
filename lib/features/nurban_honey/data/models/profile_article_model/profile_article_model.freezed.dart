// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileArticleModel _$ProfileArticleModelFromJson(Map<String, dynamic> json) {
  return _ProfileArticleModel.fromJson(json);
}

/// @nodoc
class _$ProfileArticleModelTearOff {
  const _$ProfileArticleModelTearOff();

  _ProfileArticleModel call(int id, String? thumbnail, String title,
      int commentCount, String createdAt, BoardInfoModel board) {
    return _ProfileArticleModel(
      id,
      thumbnail,
      title,
      commentCount,
      createdAt,
      board,
    );
  }

  ProfileArticleModel fromJson(Map<String, Object?> json) {
    return ProfileArticleModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileArticleModel = _$ProfileArticleModelTearOff();

/// @nodoc
mixin _$ProfileArticleModel {
  int get id => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  BoardInfoModel get board => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileArticleModelCopyWith<ProfileArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileArticleModelCopyWith<$Res> {
  factory $ProfileArticleModelCopyWith(
          ProfileArticleModel value, $Res Function(ProfileArticleModel) then) =
      _$ProfileArticleModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? thumbnail,
      String title,
      int commentCount,
      String createdAt,
      BoardInfoModel board});

  $BoardInfoModelCopyWith<$Res> get board;
}

/// @nodoc
class _$ProfileArticleModelCopyWithImpl<$Res>
    implements $ProfileArticleModelCopyWith<$Res> {
  _$ProfileArticleModelCopyWithImpl(this._value, this._then);

  final ProfileArticleModel _value;
  // ignore: unused_field
  final $Res Function(ProfileArticleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? commentCount = freezed,
    Object? createdAt = freezed,
    Object? board = freezed,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as BoardInfoModel,
    ));
  }

  @override
  $BoardInfoModelCopyWith<$Res> get board {
    return $BoardInfoModelCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileArticleModelCopyWith<$Res>
    implements $ProfileArticleModelCopyWith<$Res> {
  factory _$ProfileArticleModelCopyWith(_ProfileArticleModel value,
          $Res Function(_ProfileArticleModel) then) =
      __$ProfileArticleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? thumbnail,
      String title,
      int commentCount,
      String createdAt,
      BoardInfoModel board});

  @override
  $BoardInfoModelCopyWith<$Res> get board;
}

/// @nodoc
class __$ProfileArticleModelCopyWithImpl<$Res>
    extends _$ProfileArticleModelCopyWithImpl<$Res>
    implements _$ProfileArticleModelCopyWith<$Res> {
  __$ProfileArticleModelCopyWithImpl(
      _ProfileArticleModel _value, $Res Function(_ProfileArticleModel) _then)
      : super(_value, (v) => _then(v as _ProfileArticleModel));

  @override
  _ProfileArticleModel get _value => super._value as _ProfileArticleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? commentCount = freezed,
    Object? createdAt = freezed,
    Object? board = freezed,
  }) {
    return _then(_ProfileArticleModel(
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
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as BoardInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileArticleModel implements _ProfileArticleModel {
  _$_ProfileArticleModel(this.id, this.thumbnail, this.title, this.commentCount,
      this.createdAt, this.board);

  factory _$_ProfileArticleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileArticleModelFromJson(json);

  @override
  final int id;
  @override
  final String? thumbnail;
  @override
  final String title;
  @override
  final int commentCount;
  @override
  final String createdAt;
  @override
  final BoardInfoModel board;

  @override
  String toString() {
    return 'ProfileArticleModel(id: $id, thumbnail: $thumbnail, title: $title, commentCount: $commentCount, createdAt: $createdAt, board: $board)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileArticleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.board, board));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(board));

  @JsonKey(ignore: true)
  @override
  _$ProfileArticleModelCopyWith<_ProfileArticleModel> get copyWith =>
      __$ProfileArticleModelCopyWithImpl<_ProfileArticleModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileArticleModelToJson(this);
  }
}

abstract class _ProfileArticleModel implements ProfileArticleModel {
  factory _ProfileArticleModel(
      int id,
      String? thumbnail,
      String title,
      int commentCount,
      String createdAt,
      BoardInfoModel board) = _$_ProfileArticleModel;

  factory _ProfileArticleModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileArticleModel.fromJson;

  @override
  int get id;
  @override
  String? get thumbnail;
  @override
  String get title;
  @override
  int get commentCount;
  @override
  String get createdAt;
  @override
  BoardInfoModel get board;
  @override
  @JsonKey(ignore: true)
  _$ProfileArticleModelCopyWith<_ProfileArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
