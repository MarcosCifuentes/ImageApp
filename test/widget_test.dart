import 'package:flutter_test/flutter_test.dart';
import 'package:image_app/data/entity_models/image_date_entity.dart';
import 'package:image_app/data/entity_models/images_data_entity.dart';
import 'package:image_app/data/entity_models/source_entity.dart';
import 'package:image_app/data/providers/repository_provider.dart';
import 'package:image_app/data/repository/repository.dart';
import 'package:image_app/ui/view_model/images_view_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';

import 'widget_test.mocks.dart';

@GenerateMocks([Repository])
void main() {
  late ProviderContainer container;
  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    container = ProviderContainer(overrides: [
      repositoryProvider.overrideWithValue(mockRepository),
    ]);
  });

  tearDown(() {
    container.dispose();
  });

  group('ImagesViewModel', () {
    const mockImagesData = ImagesDataEntity(photos: [
      ImageDataEntity(
          id: 2014422,
          width: 3024,
          height: 3024,
          url: 'https://www.pexels.com/photo/brown-rocks-during-golden-hour-2014422/',
          photographer: 'Joey Farina',
          photographerUrl: 'https://www.pexels.com/@joey',
          photographerId: 680589,
          src: SourceEntity(
            original: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
            large2x: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
            large: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
            medium: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
            small: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
            portrait: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
            landscape: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
            tiny: 'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
          ),
          liked: false,
          alt: 'Brown Rocks During Golden Hour')
    ]);
    test('initial state is loading', () {
      final viewModel = container.read(imagesViewModelProvider);
      expect(viewModel, isA<AsyncLoading<ImagesDataEntity>>());
    });

    test('fetchImages updates state correctly', () async {
      when(mockRepository.fetchImages(1)).thenAnswer((_) async => mockImagesData);

      await container.read(imagesViewModelProvider.notifier).fetchImages(1);

      final state = container.read(imagesViewModelProvider);
      expect(state, isA<AsyncData<ImagesDataEntity>>());
      expect(state.value, mockImagesData);
    });

    test('searchImages updates state correctly', () async {
      const mockImagesData = ImagesDataEntity(photos: []);
      when(mockRepository.searchImages('test', 1)).thenAnswer((_) async => mockImagesData);

      await container.read(imagesViewModelProvider.notifier).searchImages('test', 1);

      final state = container.read(imagesViewModelProvider);
      expect(state, isA<AsyncData<ImagesDataEntity>>());
      expect(state.value, mockImagesData);
    });

    test('fetchImages handles errors', () async {
      when(mockRepository.fetchImages(1)).thenThrow(Exception('Failed to fetch images'));

      await container.read(imagesViewModelProvider.notifier).fetchImages(1);

      final state = container.read(imagesViewModelProvider);
      expect(state, isA<AsyncError<ImagesDataEntity>>());
      expect(state.error, isA<Exception>());
    });

    test('searchImages handles errors', () async {
      when(mockRepository.searchImages('test', 1)).thenThrow(Exception('Failed to search images'));

      await container.read(imagesViewModelProvider.notifier).searchImages('test', 1);

      final state = container.read(imagesViewModelProvider);
      expect(state, isA<AsyncError<ImagesDataEntity>>());
      expect(state.error, isA<Exception>());
    });
  });
}
