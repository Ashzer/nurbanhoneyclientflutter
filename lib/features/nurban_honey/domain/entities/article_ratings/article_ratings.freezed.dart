// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_ratings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleRatingsTearOff {
  const _$ArticleRatingsTearOff();

  _ArticleRatings call(int id, String likes, String dislikes, String myRating) {
    return _ArticleRatings(
      id,
      likes,
      dislikes,
      myRating,
    );
  }
}

/// @nodoc
const $ArticleRatings = _$ArticleRatingsTearOff();

/// @nodoc
mixin _$ArticleRatings {
  int get id => throw _privateConstructorUsedError;
  String get likes => throw _privateConstructorUsedError;
  String get dislikes => throw _privateConstructorUsedError;
  String get myRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleRatingsCopyWith<ArticleRatings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleRatingsCopyWith<$Res> {
  factory $ArticleRatingsCopyWith(
          ArticleRatings value, $Res Function(ArticleRatings) then) =
      _$ArticleRatingsCopyWithImpl<$Res>;
  $Res call({int id, String likes, String dislikes, String myRating});
}

/// @nodoc
class _$ArticleRatingsCopyWithImpl<$Res>
    implements $ArticleRatingsCopyWith<$Res> {
  _$ArticleRatingsCopyWithImpl(this._value, this._then);

  final ArticleRatings _value;
  // ignore: unused_field
  final $Res Function(ArticleRatings) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? myRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      dislikes: dislikes == freezed
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as String,
      myRating: myRating == freezed
          ? _value.myRating
          : myRating // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArticleRatingsCopyWith<$Res>
    implements $ArticleRatingsCopyWith<$Res> {
  factory _$ArticleRatingsCopyWith(
          _ArticleRatings value, $Res Function(_ArticleRatings) then) =
      __$ArticleRatingsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String likes, String dislikes, String myRating});
}

/// @nodoc
class __$ArticleRatingsCopyWithImpl<$Res>
    extends _$ArticleRatingsCopyWithImpl<$Res>
    implements _$ArticleRatingsCopyWith<$Res> {
  __$ArticleRatingsCopyWithImpl(
      _ArticleRatings _value, $Res Function(_ArticleRatings) _then)
      : super(_value, (v) => _then(v as _ArticleRatings));

  @override
  _ArticleRatings get _value => super._value as _ArticleRatings;

  @override
  $Res call({
    Object? id = freezed,
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? myRating = freezed,
  }) {
    return _then(_ArticleRatings(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      dislikes == freezed
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as String,
      myRating == freezed
          ? _value.myRating
          : myRating // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ArticleRatings implements _ArticleRatings {
  _$_ArticleRatings(this.id, this.likes, this.dislikes, this.myRating);

  @override
  final int id;
  @override
  final String likes;
  @override
  final String dislikes;
  @override
  final String myRating;

  @override
  String toString() {
    return 'ArticleRatings(id: $id, likes: $likes, dislikes: $dislikes, myRating: $myRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleRatings &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.dislikes, dislikes) &&
            const DeepCollectionEquality().equals(other.myRating, myRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(dislikes),
      const DeepCollectionEquality().hash(myRating));

  @JsonKey(ignore: true)
  @override
  _$ArticleRatingsCopyWith<_ArticleRatings> get copyWith =>
      __$ArticleRatingsCopyWithImpl<_ArticleRatings>(this, _$identity);
}

abstract class _ArticleRatings implements ArticleRatings {
  factory _ArticleRatings(
          int id, String likes, String dislikes, String myRating) =
      _$_ArticleRatings;

  @override
  int get id;
  @override
  String get likes;
  @override
  String get dislikes;
  @override
  String get myRating;
  @override
  @JsonKey(ignore: true)
  _$ArticleRatingsCopyWith<_ArticleRatings> get copyWith =>
      throw _privateConstructorUsedError;
}
