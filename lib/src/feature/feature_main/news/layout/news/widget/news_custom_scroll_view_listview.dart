import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/feature/feature_main/news/model/everything_news_list_model.dart';
import 'package:news_app/src/feature/feature_main/news/service/news_service.dart';

import '../../../widget/news_listview_content.dart';

class NewsCustomScrollViewListView extends StatelessWidget {
  const NewsCustomScrollViewListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: refactor for getting data from StateNotifierProvider(maybe)

    return Consumer(
      builder: (
        context,
        ref,
        child,
      ) {
        final data = ref.watch(newsEverythingListFutureProvider);
        return data.when(
          data: (data) {
            return NewsListViewContent(
              articles: (data as EverythingNewsListModel).articles,
            );
          },
          loading: () => const SliverFillRemaining(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 48.0),
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          // const SliverFillViewport(delegate: SliverChildDelegate()),
          error: (error, stackTrace) =>
              const SliverToBoxAdapter(child: SizedBox()),
        );
      },
    );
  }
}
