import 'package:image_app/data/data_source/api/api_response.dart';

import '../repository/models/images_data_response.dart';

abstract interface class DataSource {
  Future<ApiResponse<ImagesDataResponse>> fetchImages(int page);
  Future<ApiResponse<ImagesDataResponse>> searchImages(String query, int page);
}
