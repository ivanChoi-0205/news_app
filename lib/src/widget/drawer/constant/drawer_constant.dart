import 'package:flutter/material.dart';

import '../model/drawer_model.dart';
import 'drawer_enum.dart';

final groupList = ['A', 'B', 'C', 'D'];

final Map<DrawerItemEnum, DrawerItemEntity> drawerAllItem = {
  DrawerItemEnum.profile: DrawerItemEntity(
    label: 'My Profile',
    icon: const Icon(Icons.person_2_rounded),
    group: 'A',
    // routePath: '/news',
  ),
  DrawerItemEnum.post: DrawerItemEntity(
    label: 'My Posts',
    group: 'A',
  ),
  DrawerItemEnum.bookmark: DrawerItemEntity(
    label: 'Bookmark',
    icon: const Icon(Icons.bookmark),
    group: 'A',
  ),
  DrawerItemEnum.darkMode: DrawerItemEntity(
    label: 'Dark Mode',
    icon: const Icon(Icons.person_2_rounded),
    group: 'B',
  ),
  DrawerItemEnum.notification: DrawerItemEntity(
    label: 'Notifications',
    icon: const Icon(Icons.notifications),
    group: 'B',
  ),
  DrawerItemEnum.setting: DrawerItemEntity(
    label: 'Setting',
    icon: const Icon(Icons.settings_rounded),
    group: 'C',
  ),
  DrawerItemEnum.about: DrawerItemEntity(
    label: 'About Us',
    group: 'C',
  ),
  DrawerItemEnum.help: DrawerItemEntity(
    label: 'Policy & Terms / Help',
    group: 'C',
  ),
  DrawerItemEnum.logOut: DrawerItemEntity(
    label: 'Log Out',
    icon: const Icon(Icons.logout_rounded),
    group: 'D',
  ),
};
