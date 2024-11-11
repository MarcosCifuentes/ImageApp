// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImagesDataResponseImpl _$$ImagesDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ImagesDataResponseImpl(
      photos: (json['photos'] as List<dynamic>)
          .map((e) => ImageDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ImagesDataResponseImplToJson(
        _$ImagesDataResponseImpl instance) =>
    <String, dynamic>{
      'photos': instance.photos,
    };
