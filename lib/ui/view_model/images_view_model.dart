import 'dart:async';

import 'package:image_app/data/providers/repository_provider.dart';
import 'package:riverpod/riverpod.dart';

import '../../data/entity_models/image_date_entity.dart';

final imagesViewModelProvider = AsyncNotifierProvider<ImagesViewModel, ImagesDataEntity>(ImagesViewModel.new);

class ImagesViewModel extends AsyncNotifier<ImagesDataEntity> {
  @override
  Future<ImagesDataEntity> build() async {
    return await fetchImages(1);
  }

  Future<ImagesDataEntity> fetchImages(int page) async {
    state = AsyncValue.data(await ref.read(repositoryProvider).fetchImages(page));
    return await ref.read(repositoryProvider).fetchImages(page);
  }

  Future<ImagesDataEntity> searchImages(String query, int page) async {
    state = AsyncValue.data(await ref.read(repositoryProvider).searchImages(query, page));
    return await ref.read(repositoryProvider).searchImages(query, page);
  }
}
