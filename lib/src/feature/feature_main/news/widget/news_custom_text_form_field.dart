import 'package:flutter/material.dart';

class NewsCustomTextFormField extends StatelessWidget {
  const NewsCustomTextFormField({
    Key? key,
  }) : super(key: key);

  //

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'labelText',
        hintText: 'hintText',
      ),
      initialValue: 'type some thing',
    );
  }
}
