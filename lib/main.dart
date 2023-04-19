import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';
import 'src/service/vibration_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  VibrationService().init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    DevicePreview(
      // enabled: !kReleaseMode,
      enabled: false,
      builder: (BuildContext context) {
        return const ProviderScope(
          child: App(),
        );
      },
    ),
  );
}
