import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_app/data/entity_models/images_data_entity.dart';
import 'package:image_app/ui/view_model/images_view_model.dart';

import '../widgets/image_card.dart';
import 'detail_view.dart';

final searchActive = AutoDisposeStateProvider<bool>((ref) => false);

class GalleryView extends ConsumerStatefulWidget {
  const GalleryView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GalleryViewState();
}

class _GalleryViewState extends ConsumerState<GalleryView> {
  List<ImageDataEntity> images = [];
  String searchValue = '';
  int currentPage = 1;
  bool isLoading = false;
  bool hasMore = true;

  @override
  void initState() {
    super.initState();
  }

  void onSearch(String value) {
    setState(() {
      searchValue = value;
      ref.read(imagesViewModelProvider.notifier).searchImages(value, currentPage);
    });
  }

  Future<void> nextPage() async {
    if (isLoading || !hasMore) return;

    setState(() {
      isLoading = true;
    });

    try {
      final fetchedImages = !ref.watch(searchActive)
          ? await ref.read(imagesViewModelProvider.notifier).fetchImages(currentPage + 1)
          : await ref.read(imagesViewModelProvider.notifier).searchImages(searchValue, currentPage + 1);
      setState(() {
        currentPage++;
        images.addAll(fetchedImages.photos);
        hasMore = fetchedImages.photos.isNotEmpty;
      });
    } catch (e) {
      print('Error fetching images: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final imagesViewModel = ref.watch(imagesViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Gallery'),
        leading: IconButton(
          onPressed: () {
            if (ref.watch(searchActive) == true) {
              ref.read(imagesViewModelProvider.notifier).fetchImages(currentPage);
            }
            currentPage = 1;
            ref.read(searchActive.notifier).state = !ref.watch(searchActive);
          },
          icon: Icon(ref.watch(searchActive) ? Icons.close : Icons.search),
        ),
        bottom: ref.watch(searchActive)
            ? PreferredSize(
                preferredSize: const Size.fromHeight(50.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onSubmitted: onSearch,
                    decoration: const InputDecoration(
                      hintText: 'Search images...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              )
            : null,
      ),
      body: imagesViewModel.when(
          data: (imagesData) {
            images = imagesData.photos;
            return NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                if (!isLoading && hasMore && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
                  nextPage();
                }
                return true;
              },
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  if (index == images.length) {
                    return const Center(child: CircularProgressIndicator()); // Loading indicator
                  }
                  return ImageCard(
                    image: images[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailView(image: images[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
          error: (error, _) => const Text('Error loading Images'),
          loading: () => const SizedBox(child: Center(child: CircularProgressIndicator()))),
    );
  }
}
