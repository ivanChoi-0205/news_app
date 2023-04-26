import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:news_app/src/constant/app_dimen.dart';
import 'package:news_app/src/widget/fading_edge.dart';

import '../../../../../../widget/inkwell_widget.dart';
import '../../../model/news_response_model.dart';
import '../../../util/news_util.dart';

class NewsTopHeadlinesContent extends StatelessWidget {
  const NewsTopHeadlinesContent({
    Key? key,
    this.articles,
  }) : super(key: key);
  final List<NewsArticle>? articles;

  @override
  Widget build(BuildContext context) {
    final numOfArticles = articles?.length ?? 0;

    return SliverToBoxAdapter(
      child: AnimationLimiter(
        child: FadingEdge(
          edgeSide: EdgeSide(left: 20, right: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 20),
                ...List.generate(
                  numOfArticles,
                  (index) => Row(
                    children: [
                      InkwellWidget(
                        onTap: () => routeToNewsDetailPage(
                          context: context,
                          article: articles?[index],
                        ),
                        child: AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(
                              child: Container(
                                height: 68,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: generateButtonRadius,
                                ),
                                clipBehavior: Clip.hardEdge,
                                padding: const EdgeInsets.all(10),
                                child: Text(articles?[index].title ?? ''),
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (index != numOfArticles - 1) ...[
                        const SizedBox(width: 20)
                      ],
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
