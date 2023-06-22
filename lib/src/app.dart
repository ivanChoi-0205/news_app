import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constant/enum.dart';
import 'layout.dart';
import 'states/layout_states/layout_notifier.dart';
import 'states/layout_states/layout_states.dart';
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
      // set for device_preview package
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //
      home: Layout(
        controller: _controller,
      ),
    );
  }
}
