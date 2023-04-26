import 'package:flutter/material.dart';

import '../../../../constant/global_key.dart';
import '../../../../service/vibration_service.dart';

class NewsAppBarLeading extends StatelessWidget {
  const NewsAppBarLeading({
    Key? key,
    required this.scrollRatio,
  }) : super(key: key);

  final double scrollRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              clickFeedback();
              rootScaffoldKey.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          const CircleAvatar(
            child: Icon(
              Icons.search_rounded,
            ),
          ),
          const SizedBox(width: 20),
          const CircleAvatar(
            child: Icon(
              Icons.notifications_rounded,
            ),
          ),
          const SizedBox(width: 20),
          const CircleAvatar(
            child: Icon(
              Icons.person_outline_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
