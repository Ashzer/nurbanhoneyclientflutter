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

  _ProfileCommentModel call() {
    return _ProfileCommentModel();
  }

  ProfileCommentModel fromJson(Map<String, Object?> json) {
    return ProfileCommentModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileCommentModel = _$ProfileCommentModelTearOff();

/// @nodoc
mixin _$ProfileCommentModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCommentModelCopyWith<$Res> {
  factory $ProfileCommentModelCopyWith(
          ProfileCommentModel value, $Res Function(ProfileCommentModel) then) =
      _$ProfileCommentModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileCommentModelCopyWithImpl<$Res>
    implements $ProfileCommentModelCopyWith<$Res> {
  _$ProfileCommentModelCopyWithImpl(this._value, this._then);

  final ProfileCommentModel _value;
  // ignore: unused_field
  final $Res Function(ProfileCommentModel) _then;
}

/// @nodoc
abstract class _$ProfileCommentModelCopyWith<$Res> {
  factory _$ProfileCommentModelCopyWith(_ProfileCommentModel value,
          $Res Function(_ProfileCommentModel) then) =
      __$ProfileCommentModelCopyWithImpl<$Res>;
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
}

/// @nodoc
@JsonSerializable()
class _$_ProfileCommentModel implements _ProfileCommentModel {
  _$_ProfileCommentModel();

  factory _$_ProfileCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileCommentModelFromJson(json);

  @override
  String toString() {
    return 'ProfileCommentModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ProfileCommentModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileCommentModelToJson(this);
  }
}

abstract class _ProfileCommentModel implements ProfileCommentModel {
  factory _ProfileCommentModel() = _$_ProfileCommentModel;

  factory _ProfileCommentModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileCommentModel.fromJson;
}
