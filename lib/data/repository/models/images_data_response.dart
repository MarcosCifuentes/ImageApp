import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_data_response.dart';

part 'images_data_response.freezed.dart';

part 'images_data_response.g.dart';

@freezed
class ImagesDataResponse with _$ImagesDataResponse {
  const factory ImagesDataResponse({
    required List<ImageDataResponse> photos,
  }) = _ImagesDataResponse;

  factory ImagesDataResponse.fromJson(Map<String, dynamic> json) => _$ImagesDataResponseFromJson(json);
}
