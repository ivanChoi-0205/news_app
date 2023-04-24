import 'dart:developer';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/service/vibration_service.dart';

import '../states/layout_states/layout_notifier.dart';
import '../util/layout_util.dart';

//! this nav bar would rebuild so many times during keyboard show up animation
//! cannot use
class CustomBottomNavigationBar extends ConsumerWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final layoutStates = ref.watch(layoutProvider);
    final currentLayoutIndex =
        getIndexByLayoutEnumName(layoutStates.layoutType);
    log(
      'CustomBottomNavigationBar builded \ncurrentLayoutType: ${layoutStates.layoutType}}',
    );
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Padding(
      padding: EdgeInsets.only(
        bottom: bottomPadding == 0 ? 32.0 : bottomPadding,
      ),
      child: CustomNavigationBar(
        currentIndex: currentLayoutIndex,
        iconSize: 30.0,
        scaleFactor: 0.5,
        backgroundColor: Colors.grey.shade200,
        borderRadius: const Radius.circular(20.0),
        isFloating: true,
        onTap: (index) {
          clickFeedback();

          final LayoutNotifier notifier = ref.read(layoutProvider.notifier);
          final newLayoutType = getLayoutTypeEnumByIndex(index);
          notifier.onLayoutTypeChanged(newLayoutType);
        },
        items: List.generate(
          layoutTypeCount,
          (index) => CustomNavigationBarItem(
            icon: getNavBarIconByIndex(index),
            title: Text(
              getNavBarLabelByIndex(index),
              style: TextStyle(
                color: currentLayoutIndex == index ? Colors.blue : null,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
