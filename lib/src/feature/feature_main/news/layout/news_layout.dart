// fless

import 'package:flutter/material.dart';

import '../../../../util/service/vibration_service.dart';
import '../widget/news_drawer.dart';
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
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      // drawerEnableOpenDragGesture: false,
      drawer: const NewsDrawer(),
      body: CustomScrollView(
        controller: _controller,
        // physics:,
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          NewsCustomScrollViewAppBar(
            leadingWidget: Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    VibrationService().clickFeedback();
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                  ),
                );
              },
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            sliver: NewsCustomScrollViewWelcome(),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            sliver: NewsCustomScrollViewSearchBar(),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: NewsCustomScrollViewListView(),
          ),
        ],
      ),
    );
  }
}
