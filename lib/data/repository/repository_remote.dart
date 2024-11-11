import 'package:image_app/data/entity_models/image_date_entity.dart';

import '../data_source/data_source.dart';
import 'mappers/images_mapper.dart';
import 'repository.dart';

class RepositoryRemote implements Repository {
  final DataSource _dataSource;

  RepositoryRemote({required DataSource dataSource}) : _dataSource = dataSource;

  ImagesDataEntity? _cacheImagesData;

  @override
  ImagesDataEntity? get cacheImagesData => _cacheImagesData;

  ImagesDataEntity? _cacheSearchedImagesData;

  @override
  ImagesDataEntity? get cacheSearchedImagesData => _cacheSearchedImagesData;

  @override
  Future<ImagesDataEntity> fetchImages(int page) async {
    final apiResponse = await _dataSource.fetchImages(page);
    return apiResponse.when(onSuccess: (success) {
      _cacheImagesData = ImagesMapper().fromDtoToEntity(success.body);

      return _cacheImagesData!;
    }, onError: (error) {
      throw error;
    });
  }

  @override
  Future<ImagesDataEntity> searchImages(String query, int page) async {
    final apiResponse = await _dataSource.searchImages(query, page);
    return apiResponse.when(onSuccess: (success) {
      _cacheSearchedImagesData = ImagesMapper().fromDtoToEntity(success.body);

      return _cacheSearchedImagesData!;
    }, onError: (error) {
      throw error;
    });
  }
}
