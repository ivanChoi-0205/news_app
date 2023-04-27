import 'package:flutter/material.dart';
import 'package:news_app/src/extension/build_context_extension.dart';

class NewsAppBarBackground extends StatelessWidget {
  const NewsAppBarBackground({
    Key? key,
    required this.scrollRatio,
  }) : super(key: key);

  final double scrollRatio;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _BackgroundClipper(
        bottomShapeHeight: 35,
        scrollRatio: scrollRatio,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: context.customThemeColors.appBarBackground,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
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
