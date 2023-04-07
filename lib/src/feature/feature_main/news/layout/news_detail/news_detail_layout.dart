import 'package:flutter/material.dart';
import 'package:news_app/src/feature/feature_main/news/layout/news_detail/widget/news_detail_content.dart';

import '../../model/everything_news_list_model.dart';
import 'widget/news_detail_app_bar.dart';

class NewsDetailLayout extends StatelessWidget {
  const NewsDetailLayout({
    Key? key,
    required this.article,
  }) : super(key: key);
  final EverythingNewsArticle? article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsDetailAppBar(
            backgroundImageUrl: article?.urlToImage,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 20,
                right: 20,
              ),
              child: NewsDetailContent(
                article: article,
              ),
            ),
          )
        ],
      ),
    );
  }
}
