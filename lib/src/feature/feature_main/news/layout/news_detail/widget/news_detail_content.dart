import 'package:flutter/material.dart';

import '../../../../../../constant/app_dimen.dart';
import '../../../model/everything_news_list_model.dart';

class NewsDetailContent extends StatelessWidget {
  const NewsDetailContent({
    Key? key,
    required this.article,
  }) : super(key: key);

  final EverythingNewsArticle? article;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (article?.description != null) ...[
          const SizedBox(height: 12),
          Text(
            '${article?.description}',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        ],
        const SizedBox(height: 10),
        Text(
          article?.publishedAt ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
          ),
        ),
        const SizedBox(height: 12),
        if (article?.content != null) ...[
          const SizedBox(height: 12),
          Text(
            article?.content ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        ],
        const Divider(
          height: 40,
          indent: 50, // left padding
          endIndent: 50, // right padding
          color: Colors.grey,
        ),
        if (article?.author != null)
          Row(
            children: [
              const Text('Author: '),
              Text(
                '${article?.author}',
              ),
            ],
          ),
        if (article?.url != null) ...[
          const SizedBox(height: 12),
          Text(article?.url ?? ''),
        ],
        const SizedBox(height: 12),
        if (article?.source?.name != null)
          Row(
            children: [
              const Text('Source: '),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: generateButtonRadius,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Text(
                  article?.source?.name ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
