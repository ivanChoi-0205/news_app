// fless

import 'package:flutter/material.dart';
import 'package:news_app/src/feature/feature_main/news/view/news/widget/news_top_headlines_listview.dart';

import '../../../../../../service/vibration_service.dart';
import '../widget/news_custom_scroll_view_app_bar_delegate.dart';
import '../widget/news_everything_listview.dart';

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
    final EdgeInsets padding = MediaQuery.of(context).padding;

    return GestureDetector(
      onTap: () {
        clickFeedback();
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 28),
              sliver: SliverPersistentHeader(
                pinned: true,
                delegate: NewsCustomScrollViewAppBarDelegate(
                  paddingTop: padding.top,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 12.0),
                child: Text('頭條新聞'),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(bottom: 28),
              sliver: NewsTopHeadlinesListView(),
            ),
            const NewsEverythingListView(),
          ],
        ),
      ),
    );
  }
}
