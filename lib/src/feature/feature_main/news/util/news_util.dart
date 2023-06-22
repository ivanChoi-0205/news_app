import 'package:flutter/material.dart';

import '../model/news_response_model.dart';
import '../view/news_detail_view.dart';

void routeToNewsDetailPage({
  required BuildContext context,
  required NewsArticle? article,
}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => NewsDetailView(
        article: article,
      ),
      // builder: (context) => const ScrollingParallaxEffect(),
    ),
  );
}
