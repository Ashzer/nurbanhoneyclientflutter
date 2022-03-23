// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppVersionTearOff {
  const _$AppVersionTearOff();

  _AppVersion call(String version, bool isUpdatable) {
    return _AppVersion(
      version,
      isUpdatable,
    );
  }
}

/// @nodoc
const $AppVersion = _$AppVersionTearOff();

/// @nodoc
mixin _$AppVersion {
  String get version => throw _privateConstructorUsedError;
  bool get isUpdatable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionCopyWith<AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionCopyWith<$Res> {
  factory $AppVersionCopyWith(
          AppVersion value, $Res Function(AppVersion) then) =
      _$AppVersionCopyWithImpl<$Res>;
  $Res call({String version, bool isUpdatable});
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res> implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._value, this._then);

  final AppVersion _value;
  // ignore: unused_field
  final $Res Function(AppVersion) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? isUpdatable = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdatable: isUpdatable == freezed
          ? _value.isUpdatable
          : isUpdatable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppVersionCopyWith<$Res> implements $AppVersionCopyWith<$Res> {
  factory _$AppVersionCopyWith(
          _AppVersion value, $Res Function(_AppVersion) then) =
      __$AppVersionCopyWithImpl<$Res>;
  @override
  $Res call({String version, bool isUpdatable});
}

/// @nodoc
class __$AppVersionCopyWithImpl<$Res> extends _$AppVersionCopyWithImpl<$Res>
    implements _$AppVersionCopyWith<$Res> {
  __$AppVersionCopyWithImpl(
      _AppVersion _value, $Res Function(_AppVersion) _then)
      : super(_value, (v) => _then(v as _AppVersion));

  @override
  _AppVersion get _value => super._value as _AppVersion;

  @override
  $Res call({
    Object? version = freezed,
    Object? isUpdatable = freezed,
  }) {
    return _then(_AppVersion(
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdatable == freezed
          ? _value.isUpdatable
          : isUpdatable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppVersion implements _AppVersion {
  const _$_AppVersion(this.version, this.isUpdatable);

  @override
  final String version;
  @override
  final bool isUpdatable;

  @override
  String toString() {
    return 'AppVersion(version: $version, isUpdatable: $isUpdatable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersion &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other.isUpdatable, isUpdatable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(isUpdatable));

  @JsonKey(ignore: true)
  @override
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      __$AppVersionCopyWithImpl<_AppVersion>(this, _$identity);
}

abstract class _AppVersion implements AppVersion {
  const factory _AppVersion(String version, bool isUpdatable) = _$_AppVersion;

  @override
  String get version;
  @override
  bool get isUpdatable;
  @override
  @JsonKey(ignore: true)
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
