import 'package:image_app/data/entity_models/image_date_entity.dart';
import 'package:image_app/data/entity_models/source_entity.dart';
import 'package:image_app/data/repository/models/images_data_response.dart';

import '../../entity_models/images_data_entity.dart';
import 'base_mapper.dart';

class ImagesMapper implements IBaseResponseMapper<ImagesDataEntity, ImagesDataResponse> {
  @override
  ImagesDataEntity fromDtoToEntity(ImagesDataResponse response) {
    return ImagesDataEntity(
        photos: response.photos
            .map((imageDataResponse) => ImageDataEntity(
                id: imageDataResponse.id,
                width: imageDataResponse.width,
                height: imageDataResponse.height,
                url: imageDataResponse.url,
                photographer: imageDataResponse.photographer,
                photographerUrl: imageDataResponse.photographerUrl,
                photographerId: imageDataResponse.photographerId,
                src: SourceEntity(
                    original: imageDataResponse.src.original,
                    large2x: imageDataResponse.src.large2x,
                    large: imageDataResponse.src.large,
                    medium: imageDataResponse.src.medium,
                    small: imageDataResponse.src.small,
                    portrait: imageDataResponse.src.portrait,
                    landscape: imageDataResponse.src.landscape,
                    tiny: imageDataResponse.src.tiny),
                liked: imageDataResponse.liked,
                alt: imageDataResponse.alt))
            .toList());
  }
}
