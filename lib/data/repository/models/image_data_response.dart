import 'package:freezed_annotation/freezed_annotation.dart';

import 'source_response.dart';

part 'image_data_response.freezed.dart';

part 'image_data_response.g.dart';

@freezed
class ImageDataResponse with _$ImageDataResponse {
  @JsonSerializable(explicitToJson: true)
  const factory ImageDataResponse({
    required int id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    @JsonKey(name: 'photographer_url') required String photographerUrl,
    @JsonKey(name: 'photographer_id') required int photographerId,
    @JsonKey(name: 'avg_color') required String averageColor,
    required SourceResponse src,
    required bool liked,
    required String alt,
  }) = _ImageDataResponse;

  factory ImageDataResponse.fromJson(Map<String, dynamic> json) => _$ImageDataResponseFromJson(json);
}
