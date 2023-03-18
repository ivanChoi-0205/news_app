import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/constants/src/enum.dart';
import 'src/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'src/states/layout_state/layout_notifier.dart';
import 'src/states/layout_state/layout_states.dart';
import 'src/util/layout_util.dart';
import 'src/util/service/vibration_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  VibrationService().init();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // useMaterial3: true,
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
            final layoutStates = ref.watch(layoutProvider);
            final currentLayoutIndex = getIndexByLayoutEnumName(
              layoutStates.layoutType,
            );
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
