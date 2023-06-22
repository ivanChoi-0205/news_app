import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/feature/feature_main/news/service/news_service.dart';

import '../model/news_response_model.dart';
import 'news_top_headlines_listview_content.dart';

class NewsTopHeadlinesListView extends ConsumerWidget {
  const NewsTopHeadlinesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(newsTopHeadlinesFutureProvider);
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10),
            child: Text('頭條新聞'),
          ),
          data.when(
            data: (data) {
              return NewsTopHeadlinesContent(
                articles: (data as NewsResponseModel).articles,
              );
            },
            loading: () => const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 48.0),
                child: CircularProgressIndicator(),
              ),
            ),
            error: (error, stackTrace) => const SizedBox(),
          ),
        ],
      ),
    );
  }
}
