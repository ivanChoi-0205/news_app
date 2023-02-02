import 'package:flutter/material.dart';

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

  _updatePageIndex(int newIndex) {
    debugPrint(newIndex.toString());
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
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.live_tv_rounded),
          label: '直播',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: '網誌',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '主頁',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.podcasts),
          label: '播客',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '個人主頁',
        ),
      ],
    );
  }
}
