import 'package:flutter/material.dart';

class CustomOpacity extends StatelessWidget {
  final Widget child;
  final double opacity;
  final bool needTransition;
  final Duration duration;
  final Curve curve;
  final VoidCallback? onEnd;

  const CustomOpacity({
    Key? key,
    required this.child,
    required this.opacity,
    this.needTransition = false,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.linear,
    this.onEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: opacity == 0 ? true : false,
      child: AnimatedOpacity(
        duration: duration,
        opacity: opacity,
        curve: Curves.linear,
        onEnd: onEnd,
        child: child,
      ),
    );
  }
}
