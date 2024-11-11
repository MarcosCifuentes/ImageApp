import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_app/data/entity_models/images_data_entity.dart';

class ImageCard extends StatelessWidget {
  final ImageDataEntity image;
  final VoidCallback onTap;

  const ImageCard({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: CachedNetworkImage(
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            imageUrl: image.src.original,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
