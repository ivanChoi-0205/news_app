import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_app/src/widget/drawer/widget/drawer_footer.dart';

import '../constant/drawer_enum.dart';

class DrawerLayout extends StatefulWidget {
  const DrawerLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerLayout> createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  void initState() {
    log('Drawer init');
    super.initState();
  }

  @override
  void dispose() {
    log('Drawer dispose');

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.amber,
      child: Stack(
        children: [
          Column(
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Ivan Choi',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (DrawerItemEnum value in DrawerItemEnum.values) ...[
                        _DrawerItem(item: value)
                      ],
                      for (DrawerItemEnum value in DrawerItemEnum.values) ...[
                        _DrawerItem(item: value)
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (DrawerItemEnum.logOut.getItemEntity() != null)
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: MediaQuery.of(context).padding.bottom,
              child: const DrawerFooter(),
            )
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final DrawerItemEnum item;

  @override
  Widget build(BuildContext context) {
    // TODO: sort list & list by item group
    final bool isAddDivider =
        (item == DrawerItemEnum.darkMode || item == DrawerItemEnum.about);

    if (item == DrawerItemEnum.logOut) {
      return const SizedBox();
    }

    return Column(
      children: [
        if (isAddDivider)
          const Divider(
            height: 12,
            thickness: 0.5,
            color: Colors.grey,
            indent: 30,
            endIndent: 30,
          ),
        Row(
          children: [
            SizedBox(
              height: 48.0,
              width: 48.0,
              child: item.getItemEntity()?.icon,
            ),
            Text(
              item.getItemEntity()?.label ?? '',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
