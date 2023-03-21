import 'dart:developer';

import 'package:flutter/material.dart';

import '../constant/news_drawer_constant.dart';

class NewsDrawer extends StatefulWidget {
  const NewsDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsDrawer> createState() => _NewsDrawerState();
}

class _NewsDrawerState extends State<NewsDrawer> {
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
      child: Column(
        // physics: const ClampingScrollPhysics(),
        // shrinkWrap: true,
        children: [
          DrawerHeader(
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
            )),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                for (int index = 0;
                    index < newsDrawerAllItem.length;
                    index++) ...[
                  _DrawerItem(
                    index: index,
                    item: newsDrawerAllItem[index],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final NewsDrawerItemEntity item;
  final int index;

  @override
  Widget build(BuildContext context) {
    // TODO: sort list & list by item group

    return Column(
      children: [
        if (index == 3 || index == 6)
          const Divider(
            height: 50,
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
              child: item.icon,
            ),
            Text(
              item.label,
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
