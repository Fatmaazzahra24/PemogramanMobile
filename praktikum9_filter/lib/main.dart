import 'package:flutter/material.dart';

import 'widget/filter_selector.dart';

void main() {
  runApp(
    const MaterialApp(
      home: PhotoFilterCarousel(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

@immutable
class PhotoFilterCarousel extends StatefulWidget {
  const PhotoFilterCarousel({super.key});

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    ),
  ];

  Color _selectedFilter = Colors.white;

  void _onFilterChanged(Color color) {
    setState(() {
      _selectedFilter = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://docs.flutter.dev/cookbook/img-files'
              '/effects/instagram-buttons/millennial-texture.jpg',
              fit: BoxFit.cover,
              color: _selectedFilter.withOpacity(0.5),
              colorBlendMode: BlendMode.hardLight,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: FilterSelector(
              filters: _filters,
              onFilterChanged: _onFilterChanged,
            ),
          ),
        ],
      ),
    );
  }
}