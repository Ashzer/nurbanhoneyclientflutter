// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImagePostResponseTearOff {
  const _$ImagePostResponseTearOff();

  _ImagePostResponse call(Uri imageUri) {
    return _ImagePostResponse(
      imageUri,
    );
  }
}

/// @nodoc
const $ImagePostResponse = _$ImagePostResponseTearOff();

/// @nodoc
mixin _$ImagePostResponse {
  Uri get imageUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagePostResponseCopyWith<ImagePostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePostResponseCopyWith<$Res> {
  factory $ImagePostResponseCopyWith(
          ImagePostResponse value, $Res Function(ImagePostResponse) then) =
      _$ImagePostResponseCopyWithImpl<$Res>;
  $Res call({Uri imageUri});
}

/// @nodoc
class _$ImagePostResponseCopyWithImpl<$Res>
    implements $ImagePostResponseCopyWith<$Res> {
  _$ImagePostResponseCopyWithImpl(this._value, this._then);

  final ImagePostResponse _value;
  // ignore: unused_field
  final $Res Function(ImagePostResponse) _then;

  @override
  $Res call({
    Object? imageUri = freezed,
  }) {
    return _then(_value.copyWith(
      imageUri: imageUri == freezed
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
abstract class _$ImagePostResponseCopyWith<$Res>
    implements $ImagePostResponseCopyWith<$Res> {
  factory _$ImagePostResponseCopyWith(
          _ImagePostResponse value, $Res Function(_ImagePostResponse) then) =
      __$ImagePostResponseCopyWithImpl<$Res>;
  @override
  $Res call({Uri imageUri});
}

/// @nodoc
class __$ImagePostResponseCopyWithImpl<$Res>
    extends _$ImagePostResponseCopyWithImpl<$Res>
    implements _$ImagePostResponseCopyWith<$Res> {
  __$ImagePostResponseCopyWithImpl(
      _ImagePostResponse _value, $Res Function(_ImagePostResponse) _then)
      : super(_value, (v) => _then(v as _ImagePostResponse));

  @override
  _ImagePostResponse get _value => super._value as _ImagePostResponse;

  @override
  $Res call({
    Object? imageUri = freezed,
  }) {
    return _then(_ImagePostResponse(
      imageUri == freezed
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_ImagePostResponse implements _ImagePostResponse {
  const _$_ImagePostResponse(this.imageUri);

  @override
  final Uri imageUri;

  @override
  String toString() {
    return 'ImagePostResponse(imageUri: $imageUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImagePostResponse &&
            const DeepCollectionEquality().equals(other.imageUri, imageUri));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUri));

  @JsonKey(ignore: true)
  @override
  _$ImagePostResponseCopyWith<_ImagePostResponse> get copyWith =>
      __$ImagePostResponseCopyWithImpl<_ImagePostResponse>(this, _$identity);
}

abstract class _ImagePostResponse implements ImagePostResponse {
  const factory _ImagePostResponse(Uri imageUri) = _$_ImagePostResponse;

  @override
  Uri get imageUri;
  @override
  @JsonKey(ignore: true)
  _$ImagePostResponseCopyWith<_ImagePostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
