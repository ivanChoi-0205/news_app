import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

class VibrationService {
  // Singleton Design Pattern
  VibrationService._();

  factory VibrationService() => _instance;
  static final VibrationService _instance = VibrationService._();

  late final bool _userEnableVibration;
  late final bool _hasCustomVibrator;
  late final bool _hasVibrator;
  late final bool _hasAmplitudeControl;
  late final bool _hasCustomVibrationsSupport;

  bool get userEnableVibration => _userEnableVibration;
  bool get hasCustomVibrator => _hasCustomVibrator;

  Future<void> init() async {
    // TODO: read value from shared_preferences package
    _userEnableVibration = true;

    // 檢查目標設備是否具有振動功能
    _hasVibrator = await Vibration.hasVibrator() ?? false;

    // 檢查目標設備是否具有控制振動幅度的能力
    _hasAmplitudeControl = await Vibration.hasAmplitudeControl() ?? false;

    //檢查設備是否能夠以自定義持續時間、模式或強度振動。即使設備沒有振動器也可能返回
    _hasCustomVibrationsSupport =
        await Vibration.hasCustomVibrationsSupport() ?? false;

    _hasCustomVibrator = _hasVibrator && _hasCustomVibrationsSupport;
  }

  // Vibration would work even device system disable

  // TODO: user set vibration enable or not => setVibration()
}

void clickFeedback() {
  if (VibrationService().userEnableVibration) {
    HapticFeedback.selectionClick();
    // Vibration.vibrate(
    //   duration: 5,
    //   amplitude: 1,
    // );
  }
}

void slideFeedback() {
  if (VibrationService().userEnableVibration) {
    HapticFeedback.lightImpact();
  }
}

void errorFeedback() {
  if (VibrationService().userEnableVibration &&
      VibrationService().hasCustomVibrator) {
    Vibration.vibrate(duration: 500);
  }
}

void successFeedback() {
  if (VibrationService().userEnableVibration &&
      VibrationService().hasCustomVibrator) {
    Vibration.vibrate(duration: 50);
  }
}
