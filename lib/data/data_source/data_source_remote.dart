import 'package:dio/dio.dart';
import 'package:image_app/data/data_source/api/api_response_handler_mixin.dart';

import '../repository/models/images_data_response.dart';
import 'api/api_response.dart';
import 'api/api_service.dart';
import 'data_source.dart';

class DataSourceRemote with ApiResponseHandlerMixin implements DataSource {
  late final ApiService _service;

  DataSourceRemote(Dio dio) : _service = ApiService(dio);

  @override
  Future<ApiResponse<ImagesDataResponse>> fetchImages(int page) async {
    final response = await executeApiCall(_service.fetchImages(page: page));
    return response;
  }

  @override
  Future<ApiResponse<ImagesDataResponse>> searchImages(String query, int page) async {
    final response = await executeApiCall(_service.searchImages(query: query, page:page));
    return response;
  }
}
