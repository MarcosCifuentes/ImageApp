// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImagesDataResponse _$ImagesDataResponseFromJson(Map<String, dynamic> json) {
  return _ImagesDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ImagesDataResponse {
  List<ImageDataResponse> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesDataResponseCopyWith<ImagesDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesDataResponseCopyWith<$Res> {
  factory $ImagesDataResponseCopyWith(
          ImagesDataResponse value, $Res Function(ImagesDataResponse) then) =
      _$ImagesDataResponseCopyWithImpl<$Res, ImagesDataResponse>;
  @useResult
  $Res call({List<ImageDataResponse> photos});
}

/// @nodoc
class _$ImagesDataResponseCopyWithImpl<$Res, $Val extends ImagesDataResponse>
    implements $ImagesDataResponseCopyWith<$Res> {
  _$ImagesDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<ImageDataResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesDataResponseImplCopyWith<$Res>
    implements $ImagesDataResponseCopyWith<$Res> {
  factory _$$ImagesDataResponseImplCopyWith(_$ImagesDataResponseImpl value,
          $Res Function(_$ImagesDataResponseImpl) then) =
      __$$ImagesDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageDataResponse> photos});
}

/// @nodoc
class __$$ImagesDataResponseImplCopyWithImpl<$Res>
    extends _$ImagesDataResponseCopyWithImpl<$Res, _$ImagesDataResponseImpl>
    implements _$$ImagesDataResponseImplCopyWith<$Res> {
  __$$ImagesDataResponseImplCopyWithImpl(_$ImagesDataResponseImpl _value,
      $Res Function(_$ImagesDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$ImagesDataResponseImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<ImageDataResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesDataResponseImpl implements _ImagesDataResponse {
  const _$ImagesDataResponseImpl(
      {required final List<ImageDataResponse> photos})
      : _photos = photos;

  factory _$ImagesDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesDataResponseImplFromJson(json);

  final List<ImageDataResponse> _photos;
  @override
  List<ImageDataResponse> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'ImagesDataResponse(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesDataResponseImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesDataResponseImplCopyWith<_$ImagesDataResponseImpl> get copyWith =>
      __$$ImagesDataResponseImplCopyWithImpl<_$ImagesDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesDataResponseImplToJson(
      this,
    );
  }
}

abstract class _ImagesDataResponse implements ImagesDataResponse {
  const factory _ImagesDataResponse(
          {required final List<ImageDataResponse> photos}) =
      _$ImagesDataResponseImpl;

  factory _ImagesDataResponse.fromJson(Map<String, dynamic> json) =
      _$ImagesDataResponseImpl.fromJson;

  @override
  List<ImageDataResponse> get photos;
  @override
  @JsonKey(ignore: true)
  _$$ImagesDataResponseImplCopyWith<_$ImagesDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
