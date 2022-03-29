// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rank_simple_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RankSimpleModel _$RankSimpleModelFromJson(Map<String, dynamic> json) {
  return _RankSimpleModel.fromJson(json);
}

/// @nodoc
class _$RankSimpleModelTearOff {
  const _$RankSimpleModelTearOff();

  _RankSimpleModel call() {
    return _RankSimpleModel();
  }

  RankSimpleModel fromJson(Map<String, Object?> json) {
    return RankSimpleModel.fromJson(json);
  }
}

/// @nodoc
const $RankSimpleModel = _$RankSimpleModelTearOff();

/// @nodoc
mixin _$RankSimpleModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankSimpleModelCopyWith<$Res> {
  factory $RankSimpleModelCopyWith(
          RankSimpleModel value, $Res Function(RankSimpleModel) then) =
      _$RankSimpleModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$RankSimpleModelCopyWithImpl<$Res>
    implements $RankSimpleModelCopyWith<$Res> {
  _$RankSimpleModelCopyWithImpl(this._value, this._then);

  final RankSimpleModel _value;
  // ignore: unused_field
  final $Res Function(RankSimpleModel) _then;
}

/// @nodoc
abstract class _$RankSimpleModelCopyWith<$Res> {
  factory _$RankSimpleModelCopyWith(
          _RankSimpleModel value, $Res Function(_RankSimpleModel) then) =
      __$RankSimpleModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$RankSimpleModelCopyWithImpl<$Res>
    extends _$RankSimpleModelCopyWithImpl<$Res>
    implements _$RankSimpleModelCopyWith<$Res> {
  __$RankSimpleModelCopyWithImpl(
      _RankSimpleModel _value, $Res Function(_RankSimpleModel) _then)
      : super(_value, (v) => _then(v as _RankSimpleModel));

  @override
  _RankSimpleModel get _value => super._value as _RankSimpleModel;
}

/// @nodoc
@JsonSerializable()
class _$_RankSimpleModel implements _RankSimpleModel {
  _$_RankSimpleModel();

  factory _$_RankSimpleModel.fromJson(Map<String, dynamic> json) =>
      _$$_RankSimpleModelFromJson(json);

  @override
  String toString() {
    return 'RankSimpleModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RankSimpleModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_RankSimpleModelToJson(this);
  }
}

abstract class _RankSimpleModel implements RankSimpleModel {
  factory _RankSimpleModel() = _$_RankSimpleModel;

  factory _RankSimpleModel.fromJson(Map<String, dynamic> json) =
      _$_RankSimpleModel.fromJson;
}
