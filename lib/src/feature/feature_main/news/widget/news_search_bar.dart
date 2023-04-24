import 'package:flutter/material.dart';
import 'package:news_app/src/feature/feature_main/news/widget/news_custom_text_form_field.dart';

class NewsSearchBar extends StatelessWidget {
  const NewsSearchBar({
    Key? key,
    required this.scrollRatio,
  }) : super(key: key);

  final double scrollRatio;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: NewsCustomTextFormField(),
        ),
        CircleAvatar(
          child: Icon(Icons.list_rounded),
        ),
      ],
    );
  }
}
