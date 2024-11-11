import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_response.freezed.dart';

part 'source_response.g.dart';

@freezed
class SourceResponse with _$SourceResponse {
  const factory SourceResponse({
    required String original,
    required String large2x,
    required String large,
    required String medium,
    required String small,
    required String portrait,
    required String landscape,
    required String tiny,

  }) = _SourceResponse;

  factory SourceResponse.fromJson(Map<String, dynamic> json) => _$SourceResponseFromJson(json);
}
