import 'package:flutter/material.dart';

import '../../../../constant/global_key.dart';
import '../../../../service/vibration_service.dart';
import '../../../../widget/custom_opacity.dart';
import '../util/news_util.dart';

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
          _Icon(
            iconData: Icons.menu_rounded,
            isAction: false,
            onTap: () {
              clickFeedback();
              rootScaffoldKey.currentState!.openDrawer();
            },
          ),
          const Spacer(),
          CustomOpacity(
            opacity: scrollRatio,
            child: _Icon(
              iconData: Icons.search_rounded,
              onTap: () {
                routeToNewsSearchPage(context: context);
              },
            ),
          ),
          const SizedBox(width: 20),
          _Icon(
            iconData: Icons.notifications_rounded,
            onTap: () {},
          ),
          const SizedBox(width: 20),
          _Icon(
            iconData: Icons.person_outline_rounded,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    Key? key,
    required this.iconData,
    this.isAction = true,
    required this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final bool isAction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        clickFeedback();
        onTap();
      },
      child: SizedBox(
        height: 42.0,
        width: 42.0,
        child: CircleAvatar(
          backgroundColor: isAction
              ? const Color(0xFFF5F5F5).withOpacity(0.6)
              : Colors.transparent,
          child: Icon(
            iconData,
            color: isAction ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
