import 'package:flutter/material.dart';

class NewsDrawerItemEntity {
  final String label;
  final Widget icon;
  final String group;
  // final String routePath;

  NewsDrawerItemEntity({
    required this.label,
    this.icon = const SizedBox(),
    // required this.routePath,
    required this.group, // show list would group by this variable
  }) {
    if (!groupList.contains(group)) {
      throw ArgumentError(
          "Error: this group had't been add to the NewsDrawerItemEntity class!!");
    }
  }
}

final groupList = ['A', 'B', 'C', 'D'];

final List<NewsDrawerItemEntity> newsDrawerAllItem = [
  NewsDrawerItemEntity(
    label: 'My Profile',
    icon: const Icon(Icons.person_2_rounded),
    group: 'A',
    // routePath: 'news/',
  ),
  NewsDrawerItemEntity(
    label: 'Bookmark',
    icon: const Icon(Icons.bookmark),
    group: 'A',
    // routePath: 'news/',
  ),
  NewsDrawerItemEntity(
    label: 'My Posts',
    // icon: const Icon(Icons.wirte),
    // routePath: 'news/',
    group: 'A',
  ),
  NewsDrawerItemEntity(
    label: 'Dark Mode',
    icon: const Icon(Icons.person_2_rounded),
    // routePath: 'news/',
    group: 'B',
  ),
  NewsDrawerItemEntity(
    label: 'Notifications',
    icon: const Icon(Icons.notifications),
    group: 'B',
  ),
  NewsDrawerItemEntity(
    label: 'Setting',
    icon: const Icon(Icons.settings_rounded),
    group: 'C',
  ),
  NewsDrawerItemEntity(
    label: 'About Us',
    group: 'C',
  ),
  NewsDrawerItemEntity(
    label: 'Policy & Terms',
    group: 'C',
  ),
  NewsDrawerItemEntity(
    label: 'Log Out',
    group: 'D',
  ),
];
