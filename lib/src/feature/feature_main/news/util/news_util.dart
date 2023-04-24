import 'package:flutter/material.dart';

import '../layout/news_detail/news_detail_layout.dart';
import '../model/news_response_model.dart';

void routeToNewsDetailPage({
  required BuildContext context,
  required NewsArticle? article,
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
