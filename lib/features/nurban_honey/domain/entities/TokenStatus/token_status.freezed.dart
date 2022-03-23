// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TokenStatusTearOff {
  const _$TokenStatusTearOff();

  _TokenStatus call(bool isValid) {
    return _TokenStatus(
      isValid,
    );
  }
}

/// @nodoc
const $TokenStatus = _$TokenStatusTearOff();

/// @nodoc
mixin _$TokenStatus {
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenStatusCopyWith<TokenStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStatusCopyWith<$Res> {
  factory $TokenStatusCopyWith(
          TokenStatus value, $Res Function(TokenStatus) then) =
      _$TokenStatusCopyWithImpl<$Res>;
  $Res call({bool isValid});
}

/// @nodoc
class _$TokenStatusCopyWithImpl<$Res> implements $TokenStatusCopyWith<$Res> {
  _$TokenStatusCopyWithImpl(this._value, this._then);

  final TokenStatus _value;
  // ignore: unused_field
  final $Res Function(TokenStatus) _then;

  @override
  $Res call({
    Object? isValid = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TokenStatusCopyWith<$Res>
    implements $TokenStatusCopyWith<$Res> {
  factory _$TokenStatusCopyWith(
          _TokenStatus value, $Res Function(_TokenStatus) then) =
      __$TokenStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool isValid});
}

/// @nodoc
class __$TokenStatusCopyWithImpl<$Res> extends _$TokenStatusCopyWithImpl<$Res>
    implements _$TokenStatusCopyWith<$Res> {
  __$TokenStatusCopyWithImpl(
      _TokenStatus _value, $Res Function(_TokenStatus) _then)
      : super(_value, (v) => _then(v as _TokenStatus));

  @override
  _TokenStatus get _value => super._value as _TokenStatus;

  @override
  $Res call({
    Object? isValid = freezed,
  }) {
    return _then(_TokenStatus(
      isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TokenStatus implements _TokenStatus {
  const _$_TokenStatus(this.isValid);

  @override
  final bool isValid;

  @override
  String toString() {
    return 'TokenStatus(isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenStatus &&
            const DeepCollectionEquality().equals(other.isValid, isValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isValid));

  @JsonKey(ignore: true)
  @override
  _$TokenStatusCopyWith<_TokenStatus> get copyWith =>
      __$TokenStatusCopyWithImpl<_TokenStatus>(this, _$identity);
}

abstract class _TokenStatus implements TokenStatus {
  const factory _TokenStatus(bool isValid) = _$_TokenStatus;

  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$TokenStatusCopyWith<_TokenStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
