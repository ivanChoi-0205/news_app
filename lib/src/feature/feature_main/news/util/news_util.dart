import 'package:flutter/material.dart';

import '../model/news_response_model.dart';
import '../view/news_detail/news_detail_layout.dart';

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
