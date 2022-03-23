// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nurban_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NurbanTokenTearOff {
  const _$NurbanTokenTearOff();

  _NurbanToken call(String token, int userId) {
    return _NurbanToken(
      token,
      userId,
    );
  }
}

/// @nodoc
const $NurbanToken = _$NurbanTokenTearOff();

/// @nodoc
mixin _$NurbanToken {
  String get token => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NurbanTokenCopyWith<NurbanToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NurbanTokenCopyWith<$Res> {
  factory $NurbanTokenCopyWith(
          NurbanToken value, $Res Function(NurbanToken) then) =
      _$NurbanTokenCopyWithImpl<$Res>;
  $Res call({String token, int userId});
}

/// @nodoc
class _$NurbanTokenCopyWithImpl<$Res> implements $NurbanTokenCopyWith<$Res> {
  _$NurbanTokenCopyWithImpl(this._value, this._then);

  final NurbanToken _value;
  // ignore: unused_field
  final $Res Function(NurbanToken) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NurbanTokenCopyWith<$Res>
    implements $NurbanTokenCopyWith<$Res> {
  factory _$NurbanTokenCopyWith(
          _NurbanToken value, $Res Function(_NurbanToken) then) =
      __$NurbanTokenCopyWithImpl<$Res>;
  @override
  $Res call({String token, int userId});
}

/// @nodoc
class __$NurbanTokenCopyWithImpl<$Res> extends _$NurbanTokenCopyWithImpl<$Res>
    implements _$NurbanTokenCopyWith<$Res> {
  __$NurbanTokenCopyWithImpl(
      _NurbanToken _value, $Res Function(_NurbanToken) _then)
      : super(_value, (v) => _then(v as _NurbanToken));

  @override
  _NurbanToken get _value => super._value as _NurbanToken;

  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
  }) {
    return _then(_NurbanToken(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NurbanToken implements _NurbanToken {
  const _$_NurbanToken(this.token, this.userId);

  @override
  final String token;
  @override
  final int userId;

  @override
  String toString() {
    return 'NurbanToken(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NurbanToken &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$NurbanTokenCopyWith<_NurbanToken> get copyWith =>
      __$NurbanTokenCopyWithImpl<_NurbanToken>(this, _$identity);
}

abstract class _NurbanToken implements NurbanToken {
  const factory _NurbanToken(String token, int userId) = _$_NurbanToken;

  @override
  String get token;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$NurbanTokenCopyWith<_NurbanToken> get copyWith =>
      throw _privateConstructorUsedError;
}
