import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../widget/news_app_bar_background.dart';
import '../../../widget/news_app_bar_leading.dart';
import '../constant/dimens.dart';

class NewsCustomScrollViewAppBarDelegate
    extends SliverPersistentHeaderDelegate {
  final double paddingTop;

  NewsCustomScrollViewAppBarDelegate({
    required this.paddingTop,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double maxShrinkOffset = maxExtent - minExtent;
    final scrollRatio = math.min(shrinkOffset / maxShrinkOffset, 1.0);

    return Stack(
      children: [
        Positioned.fill(
          child: NewsAppBarBackground(
            scrollRatio: scrollRatio,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: SafeArea(
            child: Column(
              children: [
                NewsAppBarLeading(
                  scrollRatio: scrollRatio,
                ),
                Opacity(
                  opacity: 1 - scrollRatio,
                  child: const Text('Content'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => NewsDimens.newsAppBarMaxExtentHeight + paddingTop;

  @override
  double get minExtent => NewsDimens.newsAppBarMinExtentHeight + paddingTop;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
