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
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Opacity(
              opacity: scrollRatio,
              child: const _Icon(icon: Icons.search_rounded)),
          const SizedBox(width: 20),
          const _Icon(icon: Icons.notifications_rounded),
          const SizedBox(width: 20),
          const _Icon(icon: Icons.person_outline_rounded),
        ],
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xFFF5F5F5).withOpacity(0.6),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
