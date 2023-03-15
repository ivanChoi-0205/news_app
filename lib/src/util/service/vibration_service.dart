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

  void clickFeedback() {
    if (_userEnableVibration) {
      HapticFeedback.selectionClick();
    }
  }

  void slideFeedback() {
    if (_userEnableVibration) {
      HapticFeedback.lightImpact();
    }
  }

  void errorFeedback() async {
    if (_userEnableVibration && _hasCustomVibrator) {
      Vibration.vibrate(duration: 500);
    }
  }

  void successFeedback() {
    if (_userEnableVibration && _hasCustomVibrator) {
      Vibration.vibrate(duration: 50);
    }
  }

  // TODO: user set vibration enable or not => setVibration()

}
