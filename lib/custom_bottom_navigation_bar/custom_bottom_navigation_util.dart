import 'package:flutter/material.dart';

import 'custom_bottom_navigation_enum.dart';

class NavigationBarItem {
  final List<NavigationItemEntity> items = [
    NavigationItemEntity(
      name: NavigationBarEnum.live,
      icon: const Icon(Icons.live_tv_rounded),
      label: '直播',
    ),
    NavigationItemEntity(
      name: NavigationBarEnum.blogger,
      icon: const Icon(Icons.chat_rounded),
      label: '網誌',
    ),
    NavigationItemEntity(
      name: NavigationBarEnum.news,
      icon: const Icon(Icons.newspaper_rounded),
      label: '主頁',
    ),
    NavigationItemEntity(
      name: NavigationBarEnum.podcasts,
      icon: const Icon(Icons.podcasts_rounded),
      label: '播客',
    ),
    NavigationItemEntity(
      name: NavigationBarEnum.profile,
      icon: const Icon(Icons.person_rounded),
      label: '個人主頁',
    ),
  ];

  int get length => items.length;
}

class NavigationItemEntity {
  NavigationBarEnum name;
  Widget icon;
  String label;

  NavigationItemEntity({
    required this.name,
    required this.icon,
    required this.label,
  });
}
