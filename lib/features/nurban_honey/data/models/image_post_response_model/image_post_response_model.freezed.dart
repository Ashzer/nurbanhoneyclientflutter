// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_post_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagePostResponseModel _$ImagePostResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ImagePostResponseModel.fromJson(json);
}

/// @nodoc
class _$ImagePostResponseModelTearOff {
  const _$ImagePostResponseModelTearOff();

  _ImagePostResponseModel call(String result) {
    return _ImagePostResponseModel(
      result,
    );
  }

  ImagePostResponseModel fromJson(Map<String, Object?> json) {
    return ImagePostResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ImagePostResponseModel = _$ImagePostResponseModelTearOff();

/// @nodoc
mixin _$ImagePostResponseModel {
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagePostResponseModelCopyWith<ImagePostResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePostResponseModelCopyWith<$Res> {
  factory $ImagePostResponseModelCopyWith(ImagePostResponseModel value,
          $Res Function(ImagePostResponseModel) then) =
      _$ImagePostResponseModelCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class _$ImagePostResponseModelCopyWithImpl<$Res>
    implements $ImagePostResponseModelCopyWith<$Res> {
  _$ImagePostResponseModelCopyWithImpl(this._value, this._then);

  final ImagePostResponseModel _value;
  // ignore: unused_field
  final $Res Function(ImagePostResponseModel) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImagePostResponseModelCopyWith<$Res>
    implements $ImagePostResponseModelCopyWith<$Res> {
  factory _$ImagePostResponseModelCopyWith(_ImagePostResponseModel value,
          $Res Function(_ImagePostResponseModel) then) =
      __$ImagePostResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({String result});
}

/// @nodoc
class __$ImagePostResponseModelCopyWithImpl<$Res>
    extends _$ImagePostResponseModelCopyWithImpl<$Res>
    implements _$ImagePostResponseModelCopyWith<$Res> {
  __$ImagePostResponseModelCopyWithImpl(_ImagePostResponseModel _value,
      $Res Function(_ImagePostResponseModel) _then)
      : super(_value, (v) => _then(v as _ImagePostResponseModel));

  @override
  _ImagePostResponseModel get _value => super._value as _ImagePostResponseModel;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_ImagePostResponseModel(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImagePostResponseModel implements _ImagePostResponseModel {
  _$_ImagePostResponseModel(this.result);

  factory _$_ImagePostResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImagePostResponseModelFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'ImagePostResponseModel(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImagePostResponseModel &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$ImagePostResponseModelCopyWith<_ImagePostResponseModel> get copyWith =>
      __$ImagePostResponseModelCopyWithImpl<_ImagePostResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagePostResponseModelToJson(this);
  }
}

abstract class _ImagePostResponseModel implements ImagePostResponseModel {
  factory _ImagePostResponseModel(String result) = _$_ImagePostResponseModel;

  factory _ImagePostResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ImagePostResponseModel.fromJson;

  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$ImagePostResponseModelCopyWith<_ImagePostResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
