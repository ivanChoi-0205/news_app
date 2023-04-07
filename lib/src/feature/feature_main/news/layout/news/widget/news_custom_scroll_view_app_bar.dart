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
      backgroundColor: Colors.white,
      pinned: true,
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
