// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageDataResponse _$ImageDataResponseFromJson(Map<String, dynamic> json) {
  return _ImageDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageDataResponse {
  int get id => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get photographer => throw _privateConstructorUsedError;
  @JsonKey(name: 'photographer_url')
  String get photographerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'photographer_id')
  int get photographerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_color')
  String get averageColor => throw _privateConstructorUsedError;
  SourceResponse get src => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataResponseCopyWith<ImageDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataResponseCopyWith<$Res> {
  factory $ImageDataResponseCopyWith(
          ImageDataResponse value, $Res Function(ImageDataResponse) then) =
      _$ImageDataResponseCopyWithImpl<$Res, ImageDataResponse>;
  @useResult
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl,
      @JsonKey(name: 'photographer_id') int photographerId,
      @JsonKey(name: 'avg_color') String averageColor,
      SourceResponse src,
      bool liked,
      String alt});

  $SourceResponseCopyWith<$Res> get src;
}

/// @nodoc
class _$ImageDataResponseCopyWithImpl<$Res, $Val extends ImageDataResponse>
    implements $ImageDataResponseCopyWith<$Res> {
  _$ImageDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? photographer = null,
    Object? photographerUrl = null,
    Object? photographerId = null,
    Object? averageColor = null,
    Object? src = null,
    Object? liked = null,
    Object? alt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: null == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      averageColor: null == averageColor
          ? _value.averageColor
          : averageColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SourceResponse,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceResponseCopyWith<$Res> get src {
    return $SourceResponseCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageDataResponseImplCopyWith<$Res>
    implements $ImageDataResponseCopyWith<$Res> {
  factory _$$ImageDataResponseImplCopyWith(_$ImageDataResponseImpl value,
          $Res Function(_$ImageDataResponseImpl) then) =
      __$$ImageDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl,
      @JsonKey(name: 'photographer_id') int photographerId,
      @JsonKey(name: 'avg_color') String averageColor,
      SourceResponse src,
      bool liked,
      String alt});

  @override
  $SourceResponseCopyWith<$Res> get src;
}

/// @nodoc
class __$$ImageDataResponseImplCopyWithImpl<$Res>
    extends _$ImageDataResponseCopyWithImpl<$Res, _$ImageDataResponseImpl>
    implements _$$ImageDataResponseImplCopyWith<$Res> {
  __$$ImageDataResponseImplCopyWithImpl(_$ImageDataResponseImpl _value,
      $Res Function(_$ImageDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? photographer = null,
    Object? photographerUrl = null,
    Object? photographerId = null,
    Object? averageColor = null,
    Object? src = null,
    Object? liked = null,
    Object? alt = null,
  }) {
    return _then(_$ImageDataResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: null == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      averageColor: null == averageColor
          ? _value.averageColor
          : averageColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SourceResponse,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ImageDataResponseImpl implements _ImageDataResponse {
  const _$ImageDataResponseImpl(
      {required this.id,
      required this.width,
      required this.height,
      required this.url,
      required this.photographer,
      @JsonKey(name: 'photographer_url') required this.photographerUrl,
      @JsonKey(name: 'photographer_id') required this.photographerId,
      @JsonKey(name: 'avg_color') required this.averageColor,
      required this.src,
      required this.liked,
      required this.alt});

  factory _$ImageDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int width;
  @override
  final int height;
  @override
  final String url;
  @override
  final String photographer;
  @override
  @JsonKey(name: 'photographer_url')
  final String photographerUrl;
  @override
  @JsonKey(name: 'photographer_id')
  final int photographerId;
  @override
  @JsonKey(name: 'avg_color')
  final String averageColor;
  @override
  final SourceResponse src;
  @override
  final bool liked;
  @override
  final String alt;

  @override
  String toString() {
    return 'ImageDataResponse(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, photographerId: $photographerId, averageColor: $averageColor, src: $src, liked: $liked, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl) &&
            (identical(other.photographerId, photographerId) ||
                other.photographerId == photographerId) &&
            (identical(other.averageColor, averageColor) ||
                other.averageColor == averageColor) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      width,
      height,
      url,
      photographer,
      photographerUrl,
      photographerId,
      averageColor,
      src,
      liked,
      alt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataResponseImplCopyWith<_$ImageDataResponseImpl> get copyWith =>
      __$$ImageDataResponseImplCopyWithImpl<_$ImageDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataResponseImplToJson(
      this,
    );
  }
}

abstract class _ImageDataResponse implements ImageDataResponse {
  const factory _ImageDataResponse(
      {required final int id,
      required final int width,
      required final int height,
      required final String url,
      required final String photographer,
      @JsonKey(name: 'photographer_url') required final String photographerUrl,
      @JsonKey(name: 'photographer_id') required final int photographerId,
      @JsonKey(name: 'avg_color') required final String averageColor,
      required final SourceResponse src,
      required final bool liked,
      required final String alt}) = _$ImageDataResponseImpl;

  factory _ImageDataResponse.fromJson(Map<String, dynamic> json) =
      _$ImageDataResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get width;
  @override
  int get height;
  @override
  String get url;
  @override
  String get photographer;
  @override
  @JsonKey(name: 'photographer_url')
  String get photographerUrl;
  @override
  @JsonKey(name: 'photographer_id')
  int get photographerId;
  @override
  @JsonKey(name: 'avg_color')
  String get averageColor;
  @override
  SourceResponse get src;
  @override
  bool get liked;
  @override
  String get alt;
  @override
  @JsonKey(ignore: true)
  _$$ImageDataResponseImplCopyWith<_$ImageDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
