import 'package:flutter/material.dart';

class NewsCustomScrollViewAppBar extends StatelessWidget {
  const NewsCustomScrollViewAppBar({
    Key? key,
    required this.leadingWidget,
  }) : super(key: key);

  final Widget leadingWidget;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // flexibleSpace: Container(
      // width: 20,
      // height: 50,
      // color: Colors.red.withOpacity(0.5),
      // ),
      // bottom: PreferredSize(
      //   preferredSize: const Size(100, 50),
      //   child: Container(
      //     height: 50,
      //     color: Colors.amber,
      //   ),

      // ),
      backgroundColor: Colors.white,
      // expandedHeight: 100,
      pinned: true,
      // floating: true,
      // snap: true,
      centerTitle: true,
      leading: leadingWidget,
      title: const Text(
        'Welcome to the news page',
        style: TextStyle(color: Colors.black),
      ),
      actions: const [
        CircleAvatar(
          child: Icon(
            Icons.person_outline_rounded,
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
