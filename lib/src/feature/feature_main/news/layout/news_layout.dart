// fless

import 'package:flutter/material.dart';

import 'widget/news_custom_scroll_view_app_bar.dart';
import 'widget/news_custom_scroll_view_listview.dart';
import 'widget/news_custom_scroll_view_search_bar.dart';
import 'widget/news_custom_scroll_view_welcome.dart';

class NewsLayout extends StatefulWidget {
  const NewsLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsLayout> createState() => _NewsLayoutState();
}

class _NewsLayoutState extends State<NewsLayout> {
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    // _controller.addListener(() => _scrollControllerListener());
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // _scrollControllerListener() {
  //   log('controller.offset: $_controller}');
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: CustomScrollView(
        controller: _controller,
        // physics:,
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: const [
          NewsCustomScrollViewAppBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            sliver: NewsCustomScrollViewWelcome(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            sliver: NewsCustomScrollViewSearchBar(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: NewsCustomScrollViewListView(),
          ),
        ],
      ),
    );
  }
}
