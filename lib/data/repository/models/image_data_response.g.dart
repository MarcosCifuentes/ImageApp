// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageDataResponseImpl _$$ImageDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageDataResponseImpl(
      id: (json['id'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      url: json['url'] as String,
      photographer: json['photographer'] as String,
      photographerUrl: json['photographer_url'] as String,
      photographerId: (json['photographer_id'] as num).toInt(),
      averageColor: json['avg_color'] as String,
      src: SourceResponse.fromJson(json['src'] as Map<String, dynamic>),
      liked: json['liked'] as bool,
      alt: json['alt'] as String,
    );

Map<String, dynamic> _$$ImageDataResponseImplToJson(
        _$ImageDataResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographer_url': instance.photographerUrl,
      'photographer_id': instance.photographerId,
      'avg_color': instance.averageColor,
      'src': instance.src.toJson(),
      'liked': instance.liked,
      'alt': instance.alt,
    };
