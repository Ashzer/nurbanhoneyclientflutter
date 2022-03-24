// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RankTearOff {
  const _$RankTearOff();

  _Rank call(int rankId, String totalLossCut, String totalLikes, int userId,
      String badge, String nickname, List<String> insginias) {
    return _Rank(
      rankId,
      totalLossCut,
      totalLikes,
      userId,
      badge,
      nickname,
      insginias,
    );
  }
}

/// @nodoc
const $Rank = _$RankTearOff();

/// @nodoc
mixin _$Rank {
  int get rankId => throw _privateConstructorUsedError;
  String get totalLossCut => throw _privateConstructorUsedError;
  String get totalLikes => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<String> get insginias => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RankCopyWith<Rank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankCopyWith<$Res> {
  factory $RankCopyWith(Rank value, $Res Function(Rank) then) =
      _$RankCopyWithImpl<$Res>;
  $Res call(
      {int rankId,
      String totalLossCut,
      String totalLikes,
      int userId,
      String badge,
      String nickname,
      List<String> insginias});
}

/// @nodoc
class _$RankCopyWithImpl<$Res> implements $RankCopyWith<$Res> {
  _$RankCopyWithImpl(this._value, this._then);

  final Rank _value;
  // ignore: unused_field
  final $Res Function(Rank) _then;

  @override
  $Res call({
    Object? rankId = freezed,
    Object? totalLossCut = freezed,
    Object? totalLikes = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insginias = freezed,
  }) {
    return _then(_value.copyWith(
      rankId: rankId == freezed
          ? _value.rankId
          : rankId // ignore: cast_nullable_to_non_nullable
              as int,
      totalLossCut: totalLossCut == freezed
          ? _value.totalLossCut
          : totalLossCut // ignore: cast_nullable_to_non_nullable
              as String,
      totalLikes: totalLikes == freezed
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as String,
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
      insginias: insginias == freezed
          ? _value.insginias
          : insginias // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$RankCopyWith<$Res> implements $RankCopyWith<$Res> {
  factory _$RankCopyWith(_Rank value, $Res Function(_Rank) then) =
      __$RankCopyWithImpl<$Res>;
  @override
  $Res call(
      {int rankId,
      String totalLossCut,
      String totalLikes,
      int userId,
      String badge,
      String nickname,
      List<String> insginias});
}

/// @nodoc
class __$RankCopyWithImpl<$Res> extends _$RankCopyWithImpl<$Res>
    implements _$RankCopyWith<$Res> {
  __$RankCopyWithImpl(_Rank _value, $Res Function(_Rank) _then)
      : super(_value, (v) => _then(v as _Rank));

  @override
  _Rank get _value => super._value as _Rank;

  @override
  $Res call({
    Object? rankId = freezed,
    Object? totalLossCut = freezed,
    Object? totalLikes = freezed,
    Object? userId = freezed,
    Object? badge = freezed,
    Object? nickname = freezed,
    Object? insginias = freezed,
  }) {
    return _then(_Rank(
      rankId == freezed
          ? _value.rankId
          : rankId // ignore: cast_nullable_to_non_nullable
              as int,
      totalLossCut == freezed
          ? _value.totalLossCut
          : totalLossCut // ignore: cast_nullable_to_non_nullable
              as String,
      totalLikes == freezed
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as String,
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
      insginias == freezed
          ? _value.insginias
          : insginias // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Rank implements _Rank {
  const _$_Rank(this.rankId, this.totalLossCut, this.totalLikes, this.userId,
      this.badge, this.nickname, this.insginias);

  @override
  final int rankId;
  @override
  final String totalLossCut;
  @override
  final String totalLikes;
  @override
  final int userId;
  @override
  final String badge;
  @override
  final String nickname;
  @override
  final List<String> insginias;

  @override
  String toString() {
    return 'Rank(rankId: $rankId, totalLossCut: $totalLossCut, totalLikes: $totalLikes, userId: $userId, badge: $badge, nickname: $nickname, insginias: $insginias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rank &&
            const DeepCollectionEquality().equals(other.rankId, rankId) &&
            const DeepCollectionEquality()
                .equals(other.totalLossCut, totalLossCut) &&
            const DeepCollectionEquality()
                .equals(other.totalLikes, totalLikes) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.badge, badge) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.insginias, insginias));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rankId),
      const DeepCollectionEquality().hash(totalLossCut),
      const DeepCollectionEquality().hash(totalLikes),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(badge),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(insginias));

  @JsonKey(ignore: true)
  @override
  _$RankCopyWith<_Rank> get copyWith =>
      __$RankCopyWithImpl<_Rank>(this, _$identity);
}

abstract class _Rank implements Rank {
  const factory _Rank(
      int rankId,
      String totalLossCut,
      String totalLikes,
      int userId,
      String badge,
      String nickname,
      List<String> insginias) = _$_Rank;

  @override
  int get rankId;
  @override
  String get totalLossCut;
  @override
  String get totalLikes;
  @override
  int get userId;
  @override
  String get badge;
  @override
  String get nickname;
  @override
  List<String> get insginias;
  @override
  @JsonKey(ignore: true)
  _$RankCopyWith<_Rank> get copyWith => throw _privateConstructorUsedError;
}
