import '../entity_models/image_date_entity.dart';

abstract interface class Repository {
  ImagesDataEntity? _cacheImagesData;

  ImagesDataEntity? get cacheImagesData => _cacheImagesData;

  ImagesDataEntity? _cacheSearchedImagesData;

  ImagesDataEntity? get cacheSearchedImagesData => _cacheSearchedImagesData;

  Future<ImagesDataEntity> fetchImages(int page);

  Future<ImagesDataEntity> searchImages(String query, int page);
}
