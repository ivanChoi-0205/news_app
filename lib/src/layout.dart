import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constant/global_key.dart';
import 'constant/theme/dark_theme_data.dart';
import 'constant/theme/light_theme_data.dart';
import 'states/layout_states/layout_notifier.dart';
import 'states/layout_states/layout_states.dart';
import 'util/layout_util.dart';
import 'widget/drawer/layout/drawer_layout.dart';

class Layout extends StatelessWidget {
  const Layout({
    super.key,
    required PageController? controller,
  }) : _controller = controller;

  final PageController? _controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? darkThemeData
          : lightThemeData,
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 500),
      child: Scaffold(
        key: rootScaffoldKey,
        backgroundColor: Colors.transparent,
        drawer: const DrawerLayout(),
        extendBody:
            true, // extendBody for floating bar get better performance and remove bottom area
        body: Consumer(
          builder: (_, ref, __) {
            ref.listen<LayoutStates>(layoutProvider, (
              _,
              LayoutStates state,
            ) {
              _controller?.animateToPage(
                getIndexByLayoutEnumName(state.layoutType),
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            });
            return PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                layoutsEntity.length,
                (index) => layoutsEntity.values.elementAt(index).view,
              ),
            );
          },
        ),
        // bottomSheet: Container(height: 100, width: 100, color: Colors.red),
        // bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
