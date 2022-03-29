// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RankModel _$RankModelFromJson(Map<String, dynamic> json) {
  return _RankModel.fromJson(json);
}

/// @nodoc
class _$RankModelTearOff {
  const _$RankModelTearOff();

  _RankModel call() {
    return _RankModel();
  }

  RankModel fromJson(Map<String, Object?> json) {
    return RankModel.fromJson(json);
  }
}

/// @nodoc
const $RankModel = _$RankModelTearOff();

/// @nodoc
mixin _$RankModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankModelCopyWith<$Res> {
  factory $RankModelCopyWith(RankModel value, $Res Function(RankModel) then) =
      _$RankModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$RankModelCopyWithImpl<$Res> implements $RankModelCopyWith<$Res> {
  _$RankModelCopyWithImpl(this._value, this._then);

  final RankModel _value;
  // ignore: unused_field
  final $Res Function(RankModel) _then;
}

/// @nodoc
abstract class _$RankModelCopyWith<$Res> {
  factory _$RankModelCopyWith(
          _RankModel value, $Res Function(_RankModel) then) =
      __$RankModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$RankModelCopyWithImpl<$Res> extends _$RankModelCopyWithImpl<$Res>
    implements _$RankModelCopyWith<$Res> {
  __$RankModelCopyWithImpl(_RankModel _value, $Res Function(_RankModel) _then)
      : super(_value, (v) => _then(v as _RankModel));

  @override
  _RankModel get _value => super._value as _RankModel;
}

/// @nodoc
@JsonSerializable()
class _$_RankModel implements _RankModel {
  _$_RankModel();

  factory _$_RankModel.fromJson(Map<String, dynamic> json) =>
      _$$_RankModelFromJson(json);

  @override
  String toString() {
    return 'RankModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RankModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_RankModelToJson(this);
  }
}

abstract class _RankModel implements RankModel {
  factory _RankModel() = _$_RankModel;

  factory _RankModel.fromJson(Map<String, dynamic> json) =
      _$_RankModel.fromJson;
}
