import 'package:flutter/material.dart';

import '../../../../constant/app_dimen.dart';

class NewsAppBarSearchBar extends StatefulWidget {
  const NewsAppBarSearchBar({
    this.controller,
    this.focusNode,
    Key? key,
  }) : super(key: key);

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  State<NewsAppBarSearchBar> createState() => _NewsAppBarSearchBarState();
}

class _NewsAppBarSearchBarState extends State<NewsAppBarSearchBar> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.removeListener(() {});
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 44.0,
      decoration: BoxDecoration(
        color: _focusNode.hasFocus
            ? Theme.of(context).scaffoldBackgroundColor
            : Theme.of(context).scaffoldBackgroundColor.withOpacity(0.4),
        borderRadius: generateTextFieldRadius,
      ),
      child: Stack(
        children: [
          TextField(
            controller: _controller,
            focusNode: _focusNode,
            // cursorWidth: 0.0,
            keyboardType: TextInputType.text,
            expands: true,
            maxLines: null,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              prefixIcon: Icon(
                size: 24,
                color: _focusNode.hasFocus
                    ? null
                    : Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.7),
                Icons.search_rounded,
              ),
            ),
            style: TextStyle(
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}

/*
_Icon(icon: Icons.search_rounded)
*/