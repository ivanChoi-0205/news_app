import 'package:flutter/material.dart';

import '../constant/drawer_constant.dart';

class DrawerItemEntity {
  final String label;
  final Widget icon;
  final String group;
  // final String routePath;

  DrawerItemEntity({
    required this.label,
    this.icon = const SizedBox(),
    // required this.routePath,
    required this.group, // show list would group by this variable
  }) {
    if (!groupList.contains(group)) {
      throw ArgumentError(
          "Error: this group had't been add to the DrawerItemEntity class!!");
    }
  }
}
