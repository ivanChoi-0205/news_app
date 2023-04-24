import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../model/news_response_model.dart';
import 'widget/news_detail_app_bar.dart';
import 'widget/news_detail_content.dart';

class NewsDetailLayout extends StatefulWidget {
  const NewsDetailLayout({
    Key? key,
    required this.article,
  }) : super(key: key);
  final NewsArticle? article;

  @override
  State<NewsDetailLayout> createState() => _NewsDetailLayoutState();
}

class _NewsDetailLayoutState extends State<NewsDetailLayout> {
  WebViewController controller = WebViewController();

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
        ),
      )
      ..loadRequest(
        Uri.parse(widget.article?.url ?? ''),
      );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // log(Theme.of(context).scaffoldBackgroundColor.toString());
    //TODO: Find out why Theme.of(context).scaffoldBackgroundColor always got Color(0xFFFAFAFA)
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsDetailAppBar(
            title: widget.article?.title,
            backgroundImageUrl: widget.article?.urlToImage,
          ),
          if (widget.article?.urlToImage == null ||
              widget.article?.content == null) ...[
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 20,
                  right: 20,
                ),
                child: WebViewWidget(
                  controller: controller,
                ),
              ),
            ),
          ] else ...[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 20,
                  right: 20,
                ),
                child: NewsDetailContent(
                  article: widget.article,
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
