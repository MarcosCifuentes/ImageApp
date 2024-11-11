import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../config/config.dart';
import '../../repository/models/images_data_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://api.pexels.com/v1')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/curated")
  Future<ImagesDataResponse> fetchImages({
    @Header('Authorization') String apiKey = Config.apiKey,
    @Query('per_page') int value = 25,
    @Query('page') required int page,
  });

  @GET("/search")
  Future<ImagesDataResponse> searchImages({
    @Header('Authorization') String apiKey = Config.apiKey,
    @Query('per_page') int value = 25,
    @Query('query') required String query,
    @Query('page') required int page,
  });
}
