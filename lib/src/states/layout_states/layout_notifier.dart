import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constant/enum.dart';
import 'layout_states.dart';

// final StateProvider<LayoutType> currentLayoutProvider =
//     StateProvider<LayoutType>(
//   (ref) {
//     return LayoutType.news;
//   },
// );

final layoutProvider = StateNotifierProvider<LayoutNotifier, LayoutStates>(
  (ref) {
    // return LayoutNotifier(const LayoutStates());
    return LayoutNotifier();
  },
);

class LayoutNotifier extends StateNotifier<LayoutStates> {
  // LayoutNotifier(super.state);
  LayoutNotifier() : super(const LayoutStates());

  void onLayoutTypeChanged(LayoutType layoutType) {
    state = state.copyWith(
      layoutType: layoutType,
    );
    // state.layoutType
  }
}
