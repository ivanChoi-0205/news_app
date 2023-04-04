import 'package:flutter/material.dart';

import '../../../../../widget/shake_widget.dart';

class NewsCustomScrollViewWelcome extends StatelessWidget {
  const NewsCustomScrollViewWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ShakeWidget(
        key: UniqueKey(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Ivan Choi',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
