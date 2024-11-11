import 'source_entity.dart';

class ImageDataEntity {
  final int id;
  final int width;
  final int height;
  final String url;
  final String photographer;
  final String photographerUrl;
  final int photographerId;
  final SourceEntity src;
  final bool liked;
  final String alt;

  const ImageDataEntity({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.photographer,
    required this.photographerUrl,
    required this.photographerId,
    required this.src,
    required this.liked,
    required this.alt,
  });

  ImageDataEntity copyWith({
    int? id,
    int? width,
    int? height,
    String? url,
    String? photographer,
    String? photographerUrl,
    int? photographerId,
    SourceEntity? src,
    bool? liked,
    String? alt,
  }) {
    return ImageDataEntity(
      id: id ?? this.id,
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
      photographer: photographer ?? this.photographer,
      photographerUrl: photographerUrl ?? this.photographerUrl,
      photographerId: photographerId ?? this.photographerId,
      src: src ?? this.src,
      liked: liked ?? this.liked,
      alt: alt ?? this.alt,
    );
  }
}
