// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenStatusModel _$TokenStatusModelFromJson(Map<String, dynamic> json) {
  return _TokenStatusModel.fromJson(json);
}

/// @nodoc
class _$TokenStatusModelTearOff {
  const _$TokenStatusModelTearOff();

  _TokenStatusModel call() {
    return _TokenStatusModel();
  }

  TokenStatusModel fromJson(Map<String, Object?> json) {
    return TokenStatusModel.fromJson(json);
  }
}

/// @nodoc
const $TokenStatusModel = _$TokenStatusModelTearOff();

/// @nodoc
mixin _$TokenStatusModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStatusModelCopyWith<$Res> {
  factory $TokenStatusModelCopyWith(
          TokenStatusModel value, $Res Function(TokenStatusModel) then) =
      _$TokenStatusModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$TokenStatusModelCopyWithImpl<$Res>
    implements $TokenStatusModelCopyWith<$Res> {
  _$TokenStatusModelCopyWithImpl(this._value, this._then);

  final TokenStatusModel _value;
  // ignore: unused_field
  final $Res Function(TokenStatusModel) _then;
}

/// @nodoc
abstract class _$TokenStatusModelCopyWith<$Res> {
  factory _$TokenStatusModelCopyWith(
          _TokenStatusModel value, $Res Function(_TokenStatusModel) then) =
      __$TokenStatusModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$TokenStatusModelCopyWithImpl<$Res>
    extends _$TokenStatusModelCopyWithImpl<$Res>
    implements _$TokenStatusModelCopyWith<$Res> {
  __$TokenStatusModelCopyWithImpl(
      _TokenStatusModel _value, $Res Function(_TokenStatusModel) _then)
      : super(_value, (v) => _then(v as _TokenStatusModel));

  @override
  _TokenStatusModel get _value => super._value as _TokenStatusModel;
}

/// @nodoc
@JsonSerializable()
class _$_TokenStatusModel implements _TokenStatusModel {
  _$_TokenStatusModel();

  factory _$_TokenStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_TokenStatusModelFromJson(json);

  @override
  String toString() {
    return 'TokenStatusModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TokenStatusModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenStatusModelToJson(this);
  }
}

abstract class _TokenStatusModel implements TokenStatusModel {
  factory _TokenStatusModel() = _$_TokenStatusModel;

  factory _TokenStatusModel.fromJson(Map<String, dynamic> json) =
      _$_TokenStatusModel.fromJson;
}
