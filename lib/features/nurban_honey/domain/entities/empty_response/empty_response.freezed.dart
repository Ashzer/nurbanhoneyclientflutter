// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'empty_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmptyResponseTearOff {
  const _$EmptyResponseTearOff();

  _EmptyResponse call(String result) {
    return _EmptyResponse(
      result,
    );
  }
}

/// @nodoc
const $EmptyResponse = _$EmptyResponseTearOff();

/// @nodoc
mixin _$EmptyResponse {
  String get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmptyResponseCopyWith<EmptyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyResponseCopyWith<$Res> {
  factory $EmptyResponseCopyWith(
          EmptyResponse value, $Res Function(EmptyResponse) then) =
      _$EmptyResponseCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class _$EmptyResponseCopyWithImpl<$Res>
    implements $EmptyResponseCopyWith<$Res> {
  _$EmptyResponseCopyWithImpl(this._value, this._then);

  final EmptyResponse _value;
  // ignore: unused_field
  final $Res Function(EmptyResponse) _then;

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
abstract class _$EmptyResponseCopyWith<$Res>
    implements $EmptyResponseCopyWith<$Res> {
  factory _$EmptyResponseCopyWith(
          _EmptyResponse value, $Res Function(_EmptyResponse) then) =
      __$EmptyResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result});
}

/// @nodoc
class __$EmptyResponseCopyWithImpl<$Res>
    extends _$EmptyResponseCopyWithImpl<$Res>
    implements _$EmptyResponseCopyWith<$Res> {
  __$EmptyResponseCopyWithImpl(
      _EmptyResponse _value, $Res Function(_EmptyResponse) _then)
      : super(_value, (v) => _then(v as _EmptyResponse));

  @override
  _EmptyResponse get _value => super._value as _EmptyResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_EmptyResponse(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmptyResponse implements _EmptyResponse {
  const _$_EmptyResponse(this.result);

  @override
  final String result;

  @override
  String toString() {
    return 'EmptyResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmptyResponse &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$EmptyResponseCopyWith<_EmptyResponse> get copyWith =>
      __$EmptyResponseCopyWithImpl<_EmptyResponse>(this, _$identity);
}

abstract class _EmptyResponse implements EmptyResponse {
  const factory _EmptyResponse(String result) = _$_EmptyResponse;

  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$EmptyResponseCopyWith<_EmptyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
