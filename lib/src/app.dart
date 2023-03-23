import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'service/api/api.dart';
import 'constants/src/enum.dart';
import 'custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'states/layout_state/layout_notifier.dart';
import 'states/layout_state/layout_states.dart';
import 'util/layout_util.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        // colorScheme: ColorScheme(
        //   brightness: Brightness.light,
        //   background: Colors.grey.shade200,
        //   error: Colors.red.shade400,
        //   onBackground: Colors.white,
        //   onError: Colors.red.shade200,
        //   onPrimary: Colors.white,
        //   onSecondary: Colors.white,
        //   onSurface: Colors.white,
        //   primary: Colors.white,
        //   secondary: Colors.white,
        //   surface: Colors.white,
        // ),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
