// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'empty_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmptyResponseModel _$EmptyResponseModelFromJson(Map<String, dynamic> json) {
  return _EmptyResponseModel.fromJson(json);
}

/// @nodoc
class _$EmptyResponseModelTearOff {
  const _$EmptyResponseModelTearOff();

  _EmptyResponseModel call(String result) {
    return _EmptyResponseModel(
      result,
    );
  }

  EmptyResponseModel fromJson(Map<String, Object?> json) {
    return EmptyResponseModel.fromJson(json);
  }
}

/// @nodoc
const $EmptyResponseModel = _$EmptyResponseModelTearOff();

/// @nodoc
mixin _$EmptyResponseModel {
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyResponseModelCopyWith<EmptyResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyResponseModelCopyWith<$Res> {
  factory $EmptyResponseModelCopyWith(
          EmptyResponseModel value, $Res Function(EmptyResponseModel) then) =
      _$EmptyResponseModelCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class _$EmptyResponseModelCopyWithImpl<$Res>
    implements $EmptyResponseModelCopyWith<$Res> {
  _$EmptyResponseModelCopyWithImpl(this._value, this._then);

  final EmptyResponseModel _value;
  // ignore: unused_field
  final $Res Function(EmptyResponseModel) _then;

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
abstract class _$EmptyResponseModelCopyWith<$Res>
    implements $EmptyResponseModelCopyWith<$Res> {
  factory _$EmptyResponseModelCopyWith(
          _EmptyResponseModel value, $Res Function(_EmptyResponseModel) then) =
      __$EmptyResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({String result});
}

/// @nodoc
class __$EmptyResponseModelCopyWithImpl<$Res>
    extends _$EmptyResponseModelCopyWithImpl<$Res>
    implements _$EmptyResponseModelCopyWith<$Res> {
  __$EmptyResponseModelCopyWithImpl(
      _EmptyResponseModel _value, $Res Function(_EmptyResponseModel) _then)
      : super(_value, (v) => _then(v as _EmptyResponseModel));

  @override
  _EmptyResponseModel get _value => super._value as _EmptyResponseModel;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_EmptyResponseModel(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmptyResponseModel implements _EmptyResponseModel {
  _$_EmptyResponseModel(this.result);

  factory _$_EmptyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmptyResponseModelFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'EmptyResponseModel(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmptyResponseModel &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$EmptyResponseModelCopyWith<_EmptyResponseModel> get copyWith =>
      __$EmptyResponseModelCopyWithImpl<_EmptyResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmptyResponseModelToJson(this);
  }
}

abstract class _EmptyResponseModel implements EmptyResponseModel {
  factory _EmptyResponseModel(String result) = _$_EmptyResponseModel;

  factory _EmptyResponseModel.fromJson(Map<String, dynamic> json) =
      _$_EmptyResponseModel.fromJson;

  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$EmptyResponseModelCopyWith<_EmptyResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
