import 'package:flutter/material.dart';

import '../model/news_response_model.dart';
import '../view/news_detail_view.dart';
import '../view/news_search_view.dart';

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

void routeToNewsSearchPage({
  required BuildContext context,
}) {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 150),
      reverseTransitionDuration: const Duration(milliseconds: 150),
      pageBuilder: (context, animation, secondaryAnimation) {
        return const NewsSearchView();
      },
      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) {
        const begin = Offset(.3, 0.0);
        const end = Offset(0.0, 0.0);
        const curve = Curves.linear;

        var slideTween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );
        var fadeInTween = Tween(begin: 0.0, end: 1.0).chain(
          CurveTween(curve: curve),
        );
        return FadeTransition(
          opacity: animation.drive(fadeInTween),
          child: SlideTransition(
            position: animation.drive(slideTween),
            child: child,
          ),
        );
      },
    ),
  );
}
