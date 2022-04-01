// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileCommentModel _$ProfileCommentModelFromJson(Map<String, dynamic> json) {
  return _ProfileCommentModel.fromJson(json);
}

/// @nodoc
class _$ProfileCommentModelTearOff {
  const _$ProfileCommentModelTearOff();

  _ProfileCommentModel call(int id, String content, String createdAt,
      LocationModel Location, BoardInfoModel board) {
    return _ProfileCommentModel(
      id,
      content,
      createdAt,
      Location,
      board,
    );
  }

  ProfileCommentModel fromJson(Map<String, Object?> json) {
    return ProfileCommentModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileCommentModel = _$ProfileCommentModelTearOff();

/// @nodoc
mixin _$ProfileCommentModel {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  LocationModel get Location => throw _privateConstructorUsedError;
  BoardInfoModel get board => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCommentModelCopyWith<ProfileCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCommentModelCopyWith<$Res> {
  factory $ProfileCommentModelCopyWith(
          ProfileCommentModel value, $Res Function(ProfileCommentModel) then) =
      _$ProfileCommentModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String content,
      String createdAt,
      LocationModel Location,
      BoardInfoModel board});

  $LocationModelCopyWith<$Res> get Location;
  $BoardInfoModelCopyWith<$Res> get board;
}

/// @nodoc
class _$ProfileCommentModelCopyWithImpl<$Res>
    implements $ProfileCommentModelCopyWith<$Res> {
  _$ProfileCommentModelCopyWithImpl(this._value, this._then);

  final ProfileCommentModel _value;
  // ignore: unused_field
  final $Res Function(ProfileCommentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? Location = freezed,
    Object? board = freezed,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      Location: Location == freezed
          ? _value.Location
          : Location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as BoardInfoModel,
    ));
  }

  @override
  $LocationModelCopyWith<$Res> get Location {
    return $LocationModelCopyWith<$Res>(_value.Location, (value) {
      return _then(_value.copyWith(Location: value));
    });
  }

  @override
  $BoardInfoModelCopyWith<$Res> get board {
    return $BoardInfoModelCopyWith<$Res>(_value.board, (value) {
      return _then(_value.copyWith(board: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileCommentModelCopyWith<$Res>
    implements $ProfileCommentModelCopyWith<$Res> {
  factory _$ProfileCommentModelCopyWith(_ProfileCommentModel value,
          $Res Function(_ProfileCommentModel) then) =
      __$ProfileCommentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String content,
      String createdAt,
      LocationModel Location,
      BoardInfoModel board});

  @override
  $LocationModelCopyWith<$Res> get Location;
  @override
  $BoardInfoModelCopyWith<$Res> get board;
}

/// @nodoc
class __$ProfileCommentModelCopyWithImpl<$Res>
    extends _$ProfileCommentModelCopyWithImpl<$Res>
    implements _$ProfileCommentModelCopyWith<$Res> {
  __$ProfileCommentModelCopyWithImpl(
      _ProfileCommentModel _value, $Res Function(_ProfileCommentModel) _then)
      : super(_value, (v) => _then(v as _ProfileCommentModel));

  @override
  _ProfileCommentModel get _value => super._value as _ProfileCommentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? Location = freezed,
    Object? board = freezed,
  }) {
    return _then(_ProfileCommentModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      Location == freezed
          ? _value.Location
          : Location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as BoardInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileCommentModel implements _ProfileCommentModel {
  _$_ProfileCommentModel(
      this.id, this.content, this.createdAt, this.Location, this.board);

  factory _$_ProfileCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileCommentModelFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final String createdAt;
  @override
  final LocationModel Location;
  @override
  final BoardInfoModel board;

  @override
  String toString() {
    return 'ProfileCommentModel(id: $id, content: $content, createdAt: $createdAt, Location: $Location, board: $board)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileCommentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.Location, Location) &&
            const DeepCollectionEquality().equals(other.board, board));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(Location),
      const DeepCollectionEquality().hash(board));

  @JsonKey(ignore: true)
  @override
  _$ProfileCommentModelCopyWith<_ProfileCommentModel> get copyWith =>
      __$ProfileCommentModelCopyWithImpl<_ProfileCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileCommentModelToJson(this);
  }
}

abstract class _ProfileCommentModel implements ProfileCommentModel {
  factory _ProfileCommentModel(int id, String content, String createdAt,
      LocationModel Location, BoardInfoModel board) = _$_ProfileCommentModel;

  factory _ProfileCommentModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileCommentModel.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  String get createdAt;
  @override
  LocationModel get Location;
  @override
  BoardInfoModel get board;
  @override
  @JsonKey(ignore: true)
  _$ProfileCommentModelCopyWith<_ProfileCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
