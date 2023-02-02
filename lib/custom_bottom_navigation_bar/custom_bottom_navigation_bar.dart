import 'package:flutter/material.dart';

import 'custom_bottom_navigation_util.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 2;
  final navigationBarItem = NavigationBarItem();

  _updatePageIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.blueGrey,
      enableFeedback: true,
      backgroundColor: Colors.black.withOpacity(0.5),
      onTap: (value) => _updatePageIndex(value),
      items: List.generate(
        navigationBarItem.length,
        (index) => BottomNavigationBarItem(
          icon: navigationBarItem.items[index].icon,
          label: navigationBarItem.items[index].label,
        ),
      ),
    );
  }
}
