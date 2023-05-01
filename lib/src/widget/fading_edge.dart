import 'package:flutter/material.dart';

class FadingEdge extends StatelessWidget {
  FadingEdge({
    Key? key,
    required this.child,
    required this.edgeSide,
    this.colors,
    this.stops,
    this.transform,
  }) : super(key: key);

  final Widget child;
  final EdgeSide edgeSide;
  List<Color>? colors;
  List<double>? stops;
  GradientTransform? transform;

  List<Color> _getColors(BuildContext context) {
    final defaultColor = Theme.of(context).scaffoldBackgroundColor;

    // using input colors
    if (colors != null) {
      if (stops?.length == null) {
        return colors!;
      } else {
        if (stops?.length == colors?.length) {
          return colors!;
        }
      }
    }

    // using default colors
    if (colors == null) {
      if (edgeSide.isTopOnly || edgeSide.isLeftOnly) {
        colors = [
          defaultColor,
          defaultColor.withOpacity(0.0),
        ];
        colors = colors!.reversed.toList();
      }

      if (edgeSide.isLeftOnly || edgeSide.isBottomOnly) {
        colors = [
          defaultColor.withOpacity(0.0),
          defaultColor,
        ];
        colors = colors!.reversed.toList();
      }
    }

    if (stops?.length != null) {
      if (stops?.length != colors?.length) {
        throw Exception('stops length not equal to colors length');
      }
    }
    return [
      defaultColor,
      defaultColor.withOpacity(0.0),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        if (edgeSide.top != null)
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: edgeSide.top,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: stops,
                  transform: transform,
                  colors: _getColors(context),
                ),
              ),
            ),
          ),
        if (edgeSide.bottom != null)
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: edgeSide.bottom,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: stops,
                  transform: transform,
                  colors: _getColors(context),
                ),
              ),
            ),
          ),
        if (edgeSide.left != null)
          Positioned(
            left: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Container(
              width: edgeSide.left,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: stops,
                  transform: transform,
                  colors: _getColors(context),
                ),
              ),
            ),
          ),
        if (edgeSide.right != null)
          Positioned(
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Container(
              width: edgeSide.right,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  stops: stops,
                  transform: transform,
                  colors: _getColors(context),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class EdgeSide {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  bool get isTopOnly {
    if (top == null) return false;
    if (bottom != null) return false;
    if (left != null) return false;
    if (right != null) return false;
    return true;
  }

  bool get isBottomOnly {
    if (bottom == null) return false;
    if (top != null) return false;
    if (left != null) return false;
    if (right != null) return false;
    return true;
  }

  bool get isLeftOnly {
    if (left == null) return false;
    if (right != null) return false;
    if (top != null) return false;
    if (bottom != null) return false;
    return true;
  }

  bool get isRightOnly {
    if (right == null) return false;
    if (left != null) return false;
    if (top != null) return false;
    if (bottom != null) return false;
    return true;
  }

  EdgeSide({
    this.top,
    this.bottom,
    this.left,
    this.right,
  });
}
