import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_app/data/entity_models/images_data_entity.dart';

final favoriteSelected = AutoDisposeStateProvider<bool>((ref) => false);

class DetailView extends ConsumerWidget {
  final ImageDataEntity image;

  const DetailView({super.key, required this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 300,
                // Fixed width
                height: 300,
                // Fixed height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  image.src.medium,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                onPressed: () {
                  ref.read(favoriteSelected.notifier).state = !ref.watch(favoriteSelected);
                },
                icon: Icon(ref.watch(favoriteSelected) ? Icons.favorite : Icons.favorite_border),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Description: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Expanded(
                  child: Text(
                    image.alt.isNotEmpty ? image.alt : 'No description found',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text('Photographer: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(
                  image.photographer.isNotEmpty ? image.photographer : 'Photographer unknown',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
