import 'package:flutter/material.dart';

class NewsCustomScrollViewWelcome extends StatelessWidget {
  const NewsCustomScrollViewWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // SizedBox(
          //   height: 50,
          // ),
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
    );
  }
}
