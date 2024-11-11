// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceResponse _$SourceResponseFromJson(Map<String, dynamic> json) {
  return _SourceResponse.fromJson(json);
}

/// @nodoc
mixin _$SourceResponse {
  String get original => throw _privateConstructorUsedError;
  String get large2x => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get portrait => throw _privateConstructorUsedError;
  String get landscape => throw _privateConstructorUsedError;
  String get tiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceResponseCopyWith<SourceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceResponseCopyWith<$Res> {
  factory $SourceResponseCopyWith(
          SourceResponse value, $Res Function(SourceResponse) then) =
      _$SourceResponseCopyWithImpl<$Res, SourceResponse>;
  @useResult
  $Res call(
      {String original,
      String large2x,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class _$SourceResponseCopyWithImpl<$Res, $Val extends SourceResponse>
    implements $SourceResponseCopyWith<$Res> {
  _$SourceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? landscape = null,
    Object? tiny = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: null == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceResponseImplCopyWith<$Res>
    implements $SourceResponseCopyWith<$Res> {
  factory _$$SourceResponseImplCopyWith(_$SourceResponseImpl value,
          $Res Function(_$SourceResponseImpl) then) =
      __$$SourceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String original,
      String large2x,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class __$$SourceResponseImplCopyWithImpl<$Res>
    extends _$SourceResponseCopyWithImpl<$Res, _$SourceResponseImpl>
    implements _$$SourceResponseImplCopyWith<$Res> {
  __$$SourceResponseImplCopyWithImpl(
      _$SourceResponseImpl _value, $Res Function(_$SourceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? landscape = null,
    Object? tiny = null,
  }) {
    return _then(_$SourceResponseImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: null == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceResponseImpl implements _SourceResponse {
  const _$SourceResponseImpl(
      {required this.original,
      required this.large2x,
      required this.large,
      required this.medium,
      required this.small,
      required this.portrait,
      required this.landscape,
      required this.tiny});

  factory _$SourceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceResponseImplFromJson(json);

  @override
  final String original;
  @override
  final String large2x;
  @override
  final String large;
  @override
  final String medium;
  @override
  final String small;
  @override
  final String portrait;
  @override
  final String landscape;
  @override
  final String tiny;

  @override
  String toString() {
    return 'SourceResponse(original: $original, large2x: $large2x, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceResponseImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large2x, large2x) || other.large2x == large2x) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original, large2x, large, medium,
      small, portrait, landscape, tiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceResponseImplCopyWith<_$SourceResponseImpl> get copyWith =>
      __$$SourceResponseImplCopyWithImpl<_$SourceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceResponseImplToJson(
      this,
    );
  }
}

abstract class _SourceResponse implements SourceResponse {
  const factory _SourceResponse(
      {required final String original,
      required final String large2x,
      required final String large,
      required final String medium,
      required final String small,
      required final String portrait,
      required final String landscape,
      required final String tiny}) = _$SourceResponseImpl;

  factory _SourceResponse.fromJson(Map<String, dynamic> json) =
      _$SourceResponseImpl.fromJson;

  @override
  String get original;
  @override
  String get large2x;
  @override
  String get large;
  @override
  String get medium;
  @override
  String get small;
  @override
  String get portrait;
  @override
  String get landscape;
  @override
  String get tiny;
  @override
  @JsonKey(ignore: true)
  _$$SourceResponseImplCopyWith<_$SourceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
