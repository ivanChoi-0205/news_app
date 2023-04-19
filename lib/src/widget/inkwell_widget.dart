import 'package:flutter/material.dart';

import '../service/vibration_service.dart';

class InkwellWidget extends StatelessWidget {
  const InkwellWidget({
    Key? key,
    required this.child,
    this.disable = false,
    this.feedbackFunction = clickFeedback,
    this.radius = 0,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
  }) : super(key: key);

  final Widget child;
  final bool disable;
  final VoidCallback feedbackFunction;
  final Function? onTap;
  final Function? onLongPress;
  final Function? onDoubleTap;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (!disable)
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                // highlightColor: Colors.red.withOpacity(0.1),
                // splashColor: Colors.blue.withOpacity(0.5),
                borderRadius: BorderRadius.circular(radius),
                onTap: onTap == null
                    ? null
                    : () {
                        feedbackFunction();
                        onTap!();
                      },
                onLongPress: onLongPress == null
                    ? null
                    : () {
                        feedbackFunction();
                        onLongPress!();
                      },
                onDoubleTap: onDoubleTap == null
                    ? null
                    : () {
                        feedbackFunction();
                        onDoubleTap!();
                      },
              ),
            ),
          ),
      ],
    );
  }
}
