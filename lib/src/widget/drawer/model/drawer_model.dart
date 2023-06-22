import 'package:flutter/material.dart';

class DrawerItemEntity {
  final String label;
  final Widget icon;
  // final String routePath;

  DrawerItemEntity({
    required this.label,
    this.icon = const SizedBox(),
    // required this.routePath,
  }) {
    // if (!groupList.contains(group)) {
    //   throw ArgumentError(
    //       "Error: this group had't been add to the DrawerItemEntity class!!");
    // }
  }
}
