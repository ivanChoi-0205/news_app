import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_app/src/widget/fading_edge.dart';

import '../constant/drawer_enum.dart';
import '../widget/drawer_footer.dart';

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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
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
            Expanded(
              flex: 3,
              child: FadingEdge(
                edgeSide: EdgeSide(
                  top: 24.0,
                  bottom: 16.0,
                ),
                colors: [
                  Theme.of(context).scaffoldBackgroundColor,
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
                ],
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        DrawerItemEnum.values.length,
                        (index) => _DrawerItem(
                              item: DrawerItemEnum.values[index],
                            )),
                  ),
                ),
              ),
            ),
            if (DrawerItemEnum.logOut.getItemEntity() != null)
              const DrawerFooter(),
          ],
        ),
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
