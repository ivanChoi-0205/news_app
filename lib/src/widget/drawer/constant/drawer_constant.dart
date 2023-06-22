import 'package:flutter/material.dart';

import '../model/drawer_model.dart';
import 'drawer_enum.dart';

final Map<DrawerItemEnum, DrawerItemEntity> drawerAllItem = {
  DrawerItemEnum.home: DrawerItemEntity(
    label: 'Home',
    icon: const Icon(Icons.home_rounded),
    // routePath: '/news',
  ),
  DrawerItemEnum.profile: DrawerItemEntity(
    label: 'My Profile',
    icon: const Icon(Icons.person_2_rounded),
    // routePath: '/news',
  ),
  DrawerItemEnum.post: DrawerItemEntity(
    label: 'My Posts',
  ),
  DrawerItemEnum.bookmark: DrawerItemEntity(
    label: 'Bookmark',
    icon: const Icon(Icons.bookmark),
  ),
  DrawerItemEnum.darkMode: DrawerItemEntity(
    label: 'Dark Mode',
    icon: const Icon(Icons.person_2_rounded),
  ),
  DrawerItemEnum.notification: DrawerItemEntity(
    label: 'Notifications',
    icon: const Icon(Icons.notifications),
  ),
  DrawerItemEnum.setting: DrawerItemEntity(
    label: 'Setting',
    icon: const Icon(Icons.settings_rounded),
  ),
  DrawerItemEnum.about: DrawerItemEntity(
    label: 'About Us',
  ),
  DrawerItemEnum.help: DrawerItemEntity(
    label: 'Policy & Terms / Help',
  ),
  DrawerItemEnum.logOut: DrawerItemEntity(
    label: 'Log Out',
    icon: const Icon(Icons.logout_rounded),
  ),
};
