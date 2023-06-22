// fless

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../service/vibration_service.dart';
import '../widget/news_custom_scroll_view_app_bar_delegate.dart';
import '../widget/news_everything_listview.dart';
import '../widget/news_top_headlines_listview.dart';

class NewsView extends StatefulWidget {
  const NewsView({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            SliverPersistentHeader(
              pinned: true,
              delegate: NewsCustomScrollViewAppBarDelegate(
                paddingTop: padding.top,
              ),
            ),
            // SliverToBoxAdapter(
            //   child: ElevatedButton(
            //     onPressed: () => showCustomDialog(context: context),
            //     child: const Text("normal"),
            //   ),
            // ),
            const SliverPadding(
              padding: EdgeInsets.only(bottom: 16),
              sliver: NewsTopHeadlinesListView(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 12.0),
                child: Text('全部'),
              ),
            ),
            const NewsEverythingListView(),
          ],
        ),
      ),
    );
  }
}

void showCustomDialog({required BuildContext context}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'label',
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return Center(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              height: 100,
              width: 200,
              // color: const Color(0xFFF5F5F5).withOpacity(0.5),
              color: Colors.transparent,
              alignment: Alignment.center,
              child: const Text('data'),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) {
      return ScaleTransition(
        // scale: CurvedAnimation(
        //   parent: animation,
        //   curve: Curves.easeOut,
        // ),
        scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
        child: FadeTransition(
            opacity: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
            child: child),
      );
    },
  );
}
