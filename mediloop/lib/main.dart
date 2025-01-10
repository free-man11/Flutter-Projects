// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:mediloop/app.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}
