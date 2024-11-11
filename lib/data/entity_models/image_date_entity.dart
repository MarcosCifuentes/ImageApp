import 'images_data_entity.dart';

class ImagesDataEntity {
  final List<ImageDataEntity> photos;

  const ImagesDataEntity({
    required this.photos,
  });

  ImagesDataEntity copyWith({
    List<ImageDataEntity>? photos,
  }) {
    return ImagesDataEntity(
      photos: photos ?? this.photos,
    );
  }
}
