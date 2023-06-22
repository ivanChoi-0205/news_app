import 'package:flutter/material.dart';

class NewsAppBarBackground extends StatelessWidget {
  const NewsAppBarBackground({
    Key? key,
    required this.scrollRatio,
  }) : super(key: key);

  final double scrollRatio;

  @override
  Widget build(BuildContext context) {
    // const radius = Radius.circular(40.0);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Theme.of(context).colorScheme.primary,
        ),
        // Positioned(
        //   left: 0,
        //   right: 0,
        //   bottom: 0,
        //   child: Container(
        //     height: 20,
        //     decoration: BoxDecoration(
        //       color: Theme.of(context).scaffoldBackgroundColor,
        //       borderRadius: const BorderRadius.only(
        //         topLeft: radius,
        //         topRight: radius,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
    // return ClipPath(
    //   clipper: _BackgroundClipper(
    //     bottomShapeHeight: 35,
    //     scrollRatio: scrollRatio,
    //   ),
    //   child: Container(
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: context.customThemeColors.appBarBackground,
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomRight,
    //       ),
    //     ),
    //   ),
    // );
  }
}

class _BackgroundClipper extends CustomClipper<Path> {
  _BackgroundClipper({
    required this.bottomShapeHeight,
    required this.scrollRatio,
  });

  final double bottomShapeHeight;
  final double scrollRatio;

  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;

    // // method 1
    // return Path()
    //   ..lineTo(0, height)
    //   ..quadraticBezierTo(
    //     size.width / 2,
    //     size.height - bottomShapeHeight,
    //     size.width,
    //     size.height,
    //   )
    //   ..lineTo(width, 0)
    //   ..close();

    // method 2
    final ratio = bottomShapeHeight * (1 - scrollRatio);
    return Path()
      ..lineTo(0, height - ratio)
      ..quadraticBezierTo(
        width / 2,
        height + ratio,
        width,
        height - ratio,
      )
      ..lineTo(width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    /// enable to trigger rebuild
    return false;
    // return true;
  }
}
