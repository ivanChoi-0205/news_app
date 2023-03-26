import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants/enum.dart';
import 'constants/global_key.dart';
import 'constants/theme/dark_theme_data.dart';
import 'constants/theme/light_theme_data.dart';
import 'service/api/api.dart';
import 'states/layout_states/layout_notifier.dart';
import 'states/layout_states/layout_states.dart';
import 'util/layout_util.dart';
import 'widget/custom_bottom_navigation_bar.dart';
import 'widget/drawer/layout/drawer_layout.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  PageController? _controller;

  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() {
    // final LayoutStates layoutState = ref.read(layoutProvider.notifier).state;
    // final LayoutNotifier notifier = ref.read(layoutProvider.notifier);

    final LayoutStates layoutState = ref.read(layoutProvider);
    final LayoutType layoutType = layoutState.layoutType;

    _controller = PageController(
      initialPage: getIndexByLayoutEnumName(layoutType),
      keepPage: true, // true => 保持加載每個頁面的狀態
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(apiUrl);
    return MaterialApp(
      title: 'Flutter Demo',
      home: Layout(
        controller: _controller,
      ),
    );
  }
}

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
            // final layoutStates = ref.watch(layoutProvider);
            // final currentLayoutIndex = getIndexByLayoutEnumName(
            //   layoutStates.layoutType,
            // );
            return PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                layoutsEntity.length,
                (index) => layoutsEntity.values.elementAt(index).layoutWidget,
              ),
            );
          },
        ),
        // bottomSheet: Container(height: 100, width: 100, color: Colors.red),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
