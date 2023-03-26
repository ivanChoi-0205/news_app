import '../model/drawer_model.dart';
import 'drawer_constant.dart';

enum DrawerItemEnum {
  profile,
  post,
  bookmark,
  darkMode,
  notification,
  setting,
  about,
  help,
  logOut,
}

extension DrawerItemExtension on DrawerItemEnum {
  // isInGroup
  // refer to item Entity

  DrawerItemEntity? getItemEntity() {
    return drawerAllItem[this];
  }
}
