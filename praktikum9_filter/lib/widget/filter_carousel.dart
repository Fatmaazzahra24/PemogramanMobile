import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.color,
    required this.onFilterSelected,
  });

  final Color color;
  final VoidCallback onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselFlowDelegate extends FlowDelegate {
  CarouselFlowDelegate({
    required this.viewportOffset,
    required this.filtersPerScreen,
  }) : super(repaint: viewportOffset);

  final ViewportOffset viewportOffset;
  final int filtersPerScreen;

  @override
  void paintChildren(FlowPaintingContext context) {
    final count = context.childCount;
    final size = context.size.width;
    final itemExtent = size / filtersPerScreen;
    final active = viewportOffset.pixels / itemExtent;

    for (int i = 0; i < count; i++) {
      final itemXFromCenter = i - active;
      final percentFromCenter = 1.0 - itemXFromCenter.abs();
      final itemScale = 0.5 + (percentFromCenter * 0.5).clamp(0.0, 0.5);
      final opacity = 0.25 + (percentFromCenter * 0.75).clamp(0.0, 0.75);

      final transform = Matrix4.identity()
        ..translate(
          (context.size.width - itemExtent) / 2 + itemXFromCenter * itemExtent,
          0.0,
        )
        ..scale(itemScale);

      context.paintChild(
        i,
        transform: transform,
        opacity: opacity,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CarouselFlowDelegate oldDelegate) {
    return oldDelegate.viewportOffset != viewportOffset ||
        oldDelegate.filtersPerScreen != filtersPerScreen;
  }
}