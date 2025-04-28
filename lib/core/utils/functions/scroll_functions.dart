import 'package:flutter/widgets.dart';

void scrollToTop(ScrollController scrollController) {
  scrollController.animateTo(
    0,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}

void handleScrollListener({
  required ScrollController scrollController,
  required bool showBackToTop,
  required Function(bool) updateShowBackToTop,
}) {
  final double halfwayPoint = scrollController.position.maxScrollExtent * 0.5;
  final bool show = scrollController.offset > halfwayPoint;

  if (show != showBackToTop) {
    updateShowBackToTop(show);
  }
}
