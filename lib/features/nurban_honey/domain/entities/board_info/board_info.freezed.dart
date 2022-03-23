// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardInfoTearOff {
  const _$BoardInfoTearOff();

  _BoardInfo call(int id, String name, String address) {
    return _BoardInfo(
      id,
      name,
      address,
    );
  }
}

/// @nodoc
const $BoardInfo = _$BoardInfoTearOff();

/// @nodoc
mixin _$BoardInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardInfoCopyWith<BoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardInfoCopyWith<$Res> {
  factory $BoardInfoCopyWith(BoardInfo value, $Res Function(BoardInfo) then) =
      _$BoardInfoCopyWithImpl<$Res>;
  $Res call({int id, String name, String address});
}

/// @nodoc
class _$BoardInfoCopyWithImpl<$Res> implements $BoardInfoCopyWith<$Res> {
  _$BoardInfoCopyWithImpl(this._value, this._then);

  final BoardInfo _value;
  // ignore: unused_field
  final $Res Function(BoardInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BoardInfoCopyWith<$Res> implements $BoardInfoCopyWith<$Res> {
  factory _$BoardInfoCopyWith(
          _BoardInfo value, $Res Function(_BoardInfo) then) =
      __$BoardInfoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String address});
}

/// @nodoc
class __$BoardInfoCopyWithImpl<$Res> extends _$BoardInfoCopyWithImpl<$Res>
    implements _$BoardInfoCopyWith<$Res> {
  __$BoardInfoCopyWithImpl(_BoardInfo _value, $Res Function(_BoardInfo) _then)
      : super(_value, (v) => _then(v as _BoardInfo));

  @override
  _BoardInfo get _value => super._value as _BoardInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_BoardInfo(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BoardInfo implements _BoardInfo {
  _$_BoardInfo(this.id, this.name, this.address);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;

  @override
  String toString() {
    return 'BoardInfo(id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoardInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$BoardInfoCopyWith<_BoardInfo> get copyWith =>
      __$BoardInfoCopyWithImpl<_BoardInfo>(this, _$identity);
}

abstract class _BoardInfo implements BoardInfo {
  factory _BoardInfo(int id, String name, String address) = _$_BoardInfo;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$BoardInfoCopyWith<_BoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
