import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../model/news_response_model.dart';
import '../service/news_service.dart';
import 'news_everything_listview_content.dart';

class NewsEverythingListView extends ConsumerWidget {
  const NewsEverythingListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO: refactor for getting data from StateNotifierProvider(maybe)
    final data = ref.watch(newsEverythingListFutureProvider);

    return data.when(
      data: (data) {
        return AnimationLimiter(
          child: NewsEverythingContent(
            articles: (data as NewsResponseModel).articles,
          ),
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
      error: (error, stackTrace) => const SliverToBoxAdapter(
        child: SizedBox(),
      ),
    );
  }
}
