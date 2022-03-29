// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoardInfoModel _$BoardInfoModelFromJson(Map<String, dynamic> json) {
  return _BoardInfoModel.fromJson(json);
}

/// @nodoc
class _$BoardInfoModelTearOff {
  const _$BoardInfoModelTearOff();

  _BoardInfoModel call(int id, String name, String address) {
    return _BoardInfoModel(
      id,
      name,
      address,
    );
  }

  BoardInfoModel fromJson(Map<String, Object?> json) {
    return BoardInfoModel.fromJson(json);
  }
}

/// @nodoc
const $BoardInfoModel = _$BoardInfoModelTearOff();

/// @nodoc
mixin _$BoardInfoModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardInfoModelCopyWith<BoardInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardInfoModelCopyWith<$Res> {
  factory $BoardInfoModelCopyWith(
          BoardInfoModel value, $Res Function(BoardInfoModel) then) =
      _$BoardInfoModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String address});
}

/// @nodoc
class _$BoardInfoModelCopyWithImpl<$Res>
    implements $BoardInfoModelCopyWith<$Res> {
  _$BoardInfoModelCopyWithImpl(this._value, this._then);

  final BoardInfoModel _value;
  // ignore: unused_field
  final $Res Function(BoardInfoModel) _then;

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
abstract class _$BoardInfoModelCopyWith<$Res>
    implements $BoardInfoModelCopyWith<$Res> {
  factory _$BoardInfoModelCopyWith(
          _BoardInfoModel value, $Res Function(_BoardInfoModel) then) =
      __$BoardInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String address});
}

/// @nodoc
class __$BoardInfoModelCopyWithImpl<$Res>
    extends _$BoardInfoModelCopyWithImpl<$Res>
    implements _$BoardInfoModelCopyWith<$Res> {
  __$BoardInfoModelCopyWithImpl(
      _BoardInfoModel _value, $Res Function(_BoardInfoModel) _then)
      : super(_value, (v) => _then(v as _BoardInfoModel));

  @override
  _BoardInfoModel get _value => super._value as _BoardInfoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_BoardInfoModel(
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
@JsonSerializable()
class _$_BoardInfoModel implements _BoardInfoModel {
  _$_BoardInfoModel(this.id, this.name, this.address);

  factory _$_BoardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoardInfoModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;

  @override
  String toString() {
    return 'BoardInfoModel(id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoardInfoModel &&
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
  _$BoardInfoModelCopyWith<_BoardInfoModel> get copyWith =>
      __$BoardInfoModelCopyWithImpl<_BoardInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoardInfoModelToJson(this);
  }
}

abstract class _BoardInfoModel implements BoardInfoModel {
  factory _BoardInfoModel(int id, String name, String address) =
      _$_BoardInfoModel;

  factory _BoardInfoModel.fromJson(Map<String, dynamic> json) =
      _$_BoardInfoModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$BoardInfoModelCopyWith<_BoardInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
