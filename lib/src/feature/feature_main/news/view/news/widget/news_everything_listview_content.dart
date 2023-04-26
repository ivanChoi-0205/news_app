import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../../../constant/app_dimen.dart';
import '../../../../../../widget/inkwell_widget.dart';
import '../../../model/news_response_model.dart';
import '../../../util/news_util.dart';

class NewsEverythingContent extends StatelessWidget {
  const NewsEverythingContent({
    Key? key,
    this.articles,
  }) : super(key: key);

  final List<NewsArticle>? articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles?.length ?? 0,
        (context, index) {
          final NewsArticle? article = articles?[index];

          //TODO: change to card widget
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: InkwellWidget(
                  onTap: () => routeToNewsDetailPage(
                    context: context,
                    article: article,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 80,
                        ), // outside space
                        padding: const EdgeInsets.all(20), // inside space
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(article?.urlToImage ?? ''),
                            onError: (_, __) => const SizedBox(),
                            fit: BoxFit.cover,
                          ),
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
                      ),
                      Positioned(
                        left: 34,
                        right: 34,
                        top: 100,
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 72,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: generateButtonRadius,
                            border: Border.all(
                              width: 4.0,
                              color: Colors.white,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            article?.title ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}