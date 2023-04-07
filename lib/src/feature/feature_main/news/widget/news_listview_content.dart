import 'package:flutter/material.dart';

import '../../../../constants/app_dimen.dart';
import '../layout/news_detail/news_detail_layout.dart';
import '../model/everything_news_list_model.dart';

class NewsListViewContent extends StatelessWidget {
  const NewsListViewContent({
    Key? key,
    this.articles,
  }) : super(key: key);

  final List<EverythingNewsArticle>? articles;

  void routeToNewsDetailPage({
    required BuildContext context,
    required EverythingNewsArticle? article,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewsDetailLayout(
          article: article,
        ),
        // builder: (context) => const ScrollingParallaxEffect(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles?.length ?? 0,
        (context, index) {
          final EverythingNewsArticle? article = articles?[index];

          //TODO: change to card widget
          return GestureDetector(
            onTap: () => routeToNewsDetailPage(
              context: context,
              article: article,
            ),
            child: Container(
              height: 120,
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
              ), // outside space
              padding: const EdgeInsets.all(20), // inside space
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: generateButtonRadius,
                border: Border.all(
                  width: 2.0,
                  color: Colors.black12,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(4, 4),
                    blurRadius: 10.0,
                    // spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    article?.title ?? '',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
