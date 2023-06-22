import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:news_app/src/widget/fading_edge.dart';

import '../constant/news_dimens.dart';
import 'news_app_bar_background.dart';

import 'news_app_bar_leading.dart';
import 'news_app_bar_search_bar.dart';
import 'news_app_bar_weather.dart';

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
    final double scrollRatio = math.min(shrinkOffset / maxShrinkOffset, 1.0);
    const radius = Radius.circular(40.0);

    return Stack(
      clipBehavior: Clip.none,
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
                  child: const Column(
                    children: [
                      NewsAppBarWeather(),
                      SizedBox(height: 20),
                      NewsAppBarSearchBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 20,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: radius,
                topRight: radius,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -18,
          child: FadingEdge(
            edgeSide: EdgeSide(top: 18),
            child: Container(
              height: 18,
              color: Colors.transparent,
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
