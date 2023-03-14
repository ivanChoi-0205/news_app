import 'package:flutter/material.dart';
import 'package:news_app/src/feature/feature_main/news/widget/news_custom_text_form_field.dart';

class NewsCustomScrollViewSearchBar extends StatelessWidget {
  const NewsCustomScrollViewSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: const [
          NewsCustomTextFormField(),
          SizedBox(width: 20),
          CircleAvatar(
            child: Icon(Icons.list_rounded),
          ),
        ],
      ),
    );
  }
}
