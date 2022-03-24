// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rank_simple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RankSimpleTearOff {
  const _$RankSimpleTearOff();

  _RankSimple call(int rankId, int userId, String badge, String nickname,
      List<String> insignias) {
    return _RankSimple(
      rankId,
      userId,
      badge,
      nickname,
      insignias,
    );
  }
}

/// @nodoc
const $RankSimple = _$RankSimpleTearOff();

/// @nodoc
mixin _$RankSimple {
  int get rankId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<String> get insignias => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RankSimpleCopyWith<RankSimple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankSimpleCopyWith<$Res> {
  factory $RankSimpleCopyWith(
          RankSimple value, $Res Function(RankSimple) then) =
      _$RankSimpleCopyWithImpl<$Res>;
  $Res call(
      {int rankId,
      int userId,
      String badge,
      String nickname,
      List<String> insignias});
}

/// @nodoc
class _$RankSimpleCopyWithImpl<$Res> implements $RankSimpleCopyWith<$Res> {
  _$RankSimpleCopyWithImpl(this._value, this._then);

  final RankSimple _value;
  // ignore: unused_field
  final $Res Function(RankSimple) _then;

  @override
  $Res call({
    Object? rankId = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignias = freezed,
  }) {
    return _then(_value.copyWith(
      rankId: rankId == freezed
          ? _value.rankId
          : rankId // ignore: cast_nullable_to_non_nullable
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
abstract class _$RankSimpleCopyWith<$Res> implements $RankSimpleCopyWith<$Res> {
  factory _$RankSimpleCopyWith(
          _RankSimple value, $Res Function(_RankSimple) then) =
      __$RankSimpleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int rankId,
      int userId,
      String badge,
      String nickname,
      List<String> insignias});
}

/// @nodoc
class __$RankSimpleCopyWithImpl<$Res> extends _$RankSimpleCopyWithImpl<$Res>
    implements _$RankSimpleCopyWith<$Res> {
  __$RankSimpleCopyWithImpl(
      _RankSimple _value, $Res Function(_RankSimple) _then)
      : super(_value, (v) => _then(v as _RankSimple));

  @override
  _RankSimple get _value => super._value as _RankSimple;

  @override
  $Res call({
    Object? rankId = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insignias = freezed,
  }) {
    return _then(_RankSimple(
      rankId == freezed
          ? _value.rankId
          : rankId // ignore: cast_nullable_to_non_nullable
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

class _$_RankSimple implements _RankSimple {
  const _$_RankSimple(
      this.rankId, this.userId, this.badge, this.nickname, this.insignias);

  @override
  final int rankId;
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
    return 'RankSimple(rankId: $rankId, userId: $userId, badge: $badge, nickname: $nickname, insignias: $insignias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RankSimple &&
            const DeepCollectionEquality().equals(other.rankId, rankId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.badge, badge) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.insignias, insignias));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rankId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(badge),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(insignias));

  @JsonKey(ignore: true)
  @override
  _$RankSimpleCopyWith<_RankSimple> get copyWith =>
      __$RankSimpleCopyWithImpl<_RankSimple>(this, _$identity);
}

abstract class _RankSimple implements RankSimple {
  const factory _RankSimple(int rankId, int userId, String badge,
      String nickname, List<String> insignias) = _$_RankSimple;

  @override
  int get rankId;
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
  _$RankSimpleCopyWith<_RankSimple> get copyWith =>
      throw _privateConstructorUsedError;
}
