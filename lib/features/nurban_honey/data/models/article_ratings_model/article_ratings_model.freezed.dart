// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_ratings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleRatingsModel _$ArticleRatingsModelFromJson(Map<String, dynamic> json) {
  return _ArticleRatingsModel.fromJson(json);
}

/// @nodoc
class _$ArticleRatingsModelTearOff {
  const _$ArticleRatingsModelTearOff();

  _ArticleRatingsModel call(
      int id, int likeCount, int dislikeCount, String? myRating) {
    return _ArticleRatingsModel(
      id,
      likeCount,
      dislikeCount,
      myRating,
    );
  }

  ArticleRatingsModel fromJson(Map<String, Object?> json) {
    return ArticleRatingsModel.fromJson(json);
  }
}

/// @nodoc
const $ArticleRatingsModel = _$ArticleRatingsModelTearOff();

/// @nodoc
mixin _$ArticleRatingsModel {
  int get id => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get dislikeCount => throw _privateConstructorUsedError;
  String? get myRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleRatingsModelCopyWith<ArticleRatingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleRatingsModelCopyWith<$Res> {
  factory $ArticleRatingsModelCopyWith(
          ArticleRatingsModel value, $Res Function(ArticleRatingsModel) then) =
      _$ArticleRatingsModelCopyWithImpl<$Res>;
  $Res call({int id, int likeCount, int dislikeCount, String? myRating});
}

/// @nodoc
class _$ArticleRatingsModelCopyWithImpl<$Res>
    implements $ArticleRatingsModelCopyWith<$Res> {
  _$ArticleRatingsModelCopyWithImpl(this._value, this._then);

  final ArticleRatingsModel _value;
  // ignore: unused_field
  final $Res Function(ArticleRatingsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? myRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      myRating: myRating == freezed
          ? _value.myRating
          : myRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ArticleRatingsModelCopyWith<$Res>
    implements $ArticleRatingsModelCopyWith<$Res> {
  factory _$ArticleRatingsModelCopyWith(_ArticleRatingsModel value,
          $Res Function(_ArticleRatingsModel) then) =
      __$ArticleRatingsModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, int likeCount, int dislikeCount, String? myRating});
}

/// @nodoc
class __$ArticleRatingsModelCopyWithImpl<$Res>
    extends _$ArticleRatingsModelCopyWithImpl<$Res>
    implements _$ArticleRatingsModelCopyWith<$Res> {
  __$ArticleRatingsModelCopyWithImpl(
      _ArticleRatingsModel _value, $Res Function(_ArticleRatingsModel) _then)
      : super(_value, (v) => _then(v as _ArticleRatingsModel));

  @override
  _ArticleRatingsModel get _value => super._value as _ArticleRatingsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? myRating = freezed,
  }) {
    return _then(_ArticleRatingsModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      myRating == freezed
          ? _value.myRating
          : myRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleRatingsModel implements _ArticleRatingsModel {
  _$_ArticleRatingsModel(
      this.id, this.likeCount, this.dislikeCount, this.myRating);

  factory _$_ArticleRatingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleRatingsModelFromJson(json);

  @override
  final int id;
  @override
  final int likeCount;
  @override
  final int dislikeCount;
  @override
  final String? myRating;

  @override
  String toString() {
    return 'ArticleRatingsModel(id: $id, likeCount: $likeCount, dislikeCount: $dislikeCount, myRating: $myRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleRatingsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.dislikeCount, dislikeCount) &&
            const DeepCollectionEquality().equals(other.myRating, myRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(dislikeCount),
      const DeepCollectionEquality().hash(myRating));

  @JsonKey(ignore: true)
  @override
  _$ArticleRatingsModelCopyWith<_ArticleRatingsModel> get copyWith =>
      __$ArticleRatingsModelCopyWithImpl<_ArticleRatingsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleRatingsModelToJson(this);
  }
}

abstract class _ArticleRatingsModel implements ArticleRatingsModel {
  factory _ArticleRatingsModel(
          int id, int likeCount, int dislikeCount, String? myRating) =
      _$_ArticleRatingsModel;

  factory _ArticleRatingsModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleRatingsModel.fromJson;

  @override
  int get id;
  @override
  int get likeCount;
  @override
  int get dislikeCount;
  @override
  String? get myRating;
  @override
  @JsonKey(ignore: true)
  _$ArticleRatingsModelCopyWith<_ArticleRatingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
