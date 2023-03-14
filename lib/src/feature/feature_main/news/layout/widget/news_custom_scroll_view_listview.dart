import 'package:flutter/material.dart';

class NewsCustomScrollViewListView extends StatelessWidget {
  const NewsCustomScrollViewListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 30,
        (context, index) {
          return SizedBox(
            height: 20,
            child: Text(
              '$index',
            ),
          );
        },
      ),
    );
  }
}
