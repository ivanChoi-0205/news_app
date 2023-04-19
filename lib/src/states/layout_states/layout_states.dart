import 'package:equatable/equatable.dart';

import '../../constant/enum.dart';

class LayoutStates extends Equatable {
  final LayoutType layoutType;

  const LayoutStates({
    this.layoutType = LayoutType.news,
  });

  LayoutStates copyWith({
    LayoutType? layoutType,
  }) {
    return LayoutStates(
      layoutType: layoutType ?? this.layoutType,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [layoutType];
}
