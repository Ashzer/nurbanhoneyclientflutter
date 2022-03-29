// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nurban_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NurbanTokenModel _$NurbanTokenModelFromJson(Map<String, dynamic> json) {
  return _NurbanTokenModel.fromJson(json);
}

/// @nodoc
class _$NurbanTokenModelTearOff {
  const _$NurbanTokenModelTearOff();

  _NurbanTokenModel call(String token, int userId) {
    return _NurbanTokenModel(
      token,
      userId,
    );
  }

  NurbanTokenModel fromJson(Map<String, Object?> json) {
    return NurbanTokenModel.fromJson(json);
  }
}

/// @nodoc
const $NurbanTokenModel = _$NurbanTokenModelTearOff();

/// @nodoc
mixin _$NurbanTokenModel {
  String get token => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NurbanTokenModelCopyWith<NurbanTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NurbanTokenModelCopyWith<$Res> {
  factory $NurbanTokenModelCopyWith(
          NurbanTokenModel value, $Res Function(NurbanTokenModel) then) =
      _$NurbanTokenModelCopyWithImpl<$Res>;
  $Res call({String token, int userId});
}

/// @nodoc
class _$NurbanTokenModelCopyWithImpl<$Res>
    implements $NurbanTokenModelCopyWith<$Res> {
  _$NurbanTokenModelCopyWithImpl(this._value, this._then);

  final NurbanTokenModel _value;
  // ignore: unused_field
  final $Res Function(NurbanTokenModel) _then;

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
abstract class _$NurbanTokenModelCopyWith<$Res>
    implements $NurbanTokenModelCopyWith<$Res> {
  factory _$NurbanTokenModelCopyWith(
          _NurbanTokenModel value, $Res Function(_NurbanTokenModel) then) =
      __$NurbanTokenModelCopyWithImpl<$Res>;
  @override
  $Res call({String token, int userId});
}

/// @nodoc
class __$NurbanTokenModelCopyWithImpl<$Res>
    extends _$NurbanTokenModelCopyWithImpl<$Res>
    implements _$NurbanTokenModelCopyWith<$Res> {
  __$NurbanTokenModelCopyWithImpl(
      _NurbanTokenModel _value, $Res Function(_NurbanTokenModel) _then)
      : super(_value, (v) => _then(v as _NurbanTokenModel));

  @override
  _NurbanTokenModel get _value => super._value as _NurbanTokenModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
  }) {
    return _then(_NurbanTokenModel(
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
@JsonSerializable()
class _$_NurbanTokenModel implements _NurbanTokenModel {
  _$_NurbanTokenModel(this.token, this.userId);

  factory _$_NurbanTokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_NurbanTokenModelFromJson(json);

  @override
  final String token;
  @override
  final int userId;

  @override
  String toString() {
    return 'NurbanTokenModel(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NurbanTokenModel &&
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
  _$NurbanTokenModelCopyWith<_NurbanTokenModel> get copyWith =>
      __$NurbanTokenModelCopyWithImpl<_NurbanTokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NurbanTokenModelToJson(this);
  }
}

abstract class _NurbanTokenModel implements NurbanTokenModel {
  factory _NurbanTokenModel(String token, int userId) = _$_NurbanTokenModel;

  factory _NurbanTokenModel.fromJson(Map<String, dynamic> json) =
      _$_NurbanTokenModel.fromJson;

  @override
  String get token;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$NurbanTokenModelCopyWith<_NurbanTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
