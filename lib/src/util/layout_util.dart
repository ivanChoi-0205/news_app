import 'package:flutter/material.dart';

import '../constant/enum.dart';
import '../feature/feature_main/blogger/layout/blogger_layout.dart';
import '../feature/feature_main/news/view/news_view.dart';
import '../feature/feature_main/podcasts/view/podcasts_view.dart';
import '../feature/feature_main/video/layout/video_layout.dart';

final Map<LayoutType, LayoutItemEntity> layoutsEntity = {
  LayoutType.podcasts: LayoutItemEntity(
    navBarIcon: const Icon(Icons.podcasts_rounded),
    navBarLabel: '播客',
    view: const PodcastsView(),
  ),
  LayoutType.video: LayoutItemEntity(
    navBarIcon: const Icon(Icons.video_collection_rounded),
    navBarLabel: '影片',
    view: const VideoLayout(),
  ),
  LayoutType.news: LayoutItemEntity(
    navBarIcon: const Icon(Icons.newspaper_rounded),
    navBarLabel: '主頁',
    view: const NewsView(),
  ),
  LayoutType.blogger: LayoutItemEntity(
    navBarIcon: const Icon(Icons.chat_rounded),
    navBarLabel: '網誌',
    view: const BloggerLayout(),
  ),
  // LayoutType.profile: LayoutItemEntity(
  //   navBarIcon: const Icon(Icons.person_rounded),
  //   navBarLabel: '個人主頁',
  //   view: const ProfileLayout(),
  // ),
};

// final list/map [...layoutEntity ...subFeatureEntity]

final int layoutTypeCount = layoutsEntity.length;

String getNavBarLabelByIndex(int index) =>
    layoutsEntity.values.elementAt(index).navBarLabel;

Widget getNavBarIconByIndex(int index) =>
    layoutsEntity.values.elementAt(index).navBarIcon;

LayoutType getLayoutTypeEnumByIndex(int index) {
  return layoutsEntity.keys.elementAt(index);
}

int getIndexByLayoutEnumName(LayoutType layoutType) {
  final keysList = layoutsEntity.keys.toList();
  final indexOfLayoutType = keysList.indexOf(layoutType);
  return indexOfLayoutType;
}

class LayoutItemEntity {
  final Widget navBarIcon;
  final String navBarLabel;
  final Widget view;
  //route
  // bool isMainLayout

  LayoutItemEntity({
    required this.navBarIcon,
    required this.navBarLabel,
    required this.view,
  });
}
