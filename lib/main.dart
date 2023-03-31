import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:template/presentation/core/app_widget.dart';

const kUseDevicePreview = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kUseDevicePreview) {
    runApp(
      DevicePreview(
        builder: (context) => const AppWidget(),
      ),
    );
  } else {
    runApp(const AppWidget());
  }
}
