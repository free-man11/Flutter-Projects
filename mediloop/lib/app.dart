// ignore_for_file: use_key_in_widget_constructors, depend_on_referenced_packages, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mediloop/pages/add_medication.dart';
import 'package:mediloop/pages/drug_description_1.dart';
import 'package:mediloop/pages/drug_description_2.dart';
import 'package:mediloop/pages/home.dart';
import 'package:mediloop/pages/homepage.dart';
import 'package:device_preview/device_preview.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Size(375, 667);
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // Set the initial route to onboarding
      initialRoute: '/',
      routes: {
        '/': (context) =>
            // OnboardingScreens(), // Onboarding screen as the starting point
            // '/Homepage': (context) =>
            Homepage(), // Main homepage with tabs
        '/Home': (context) => Home(), // Home page
        '/add': (context) => AddMedication(), // Add Medication screen
        '/drug1': (context) => DrugDescription1(), // Drug Description screen
        '/drug2': (context) => DrugDescription2(), // Drug Description screen
      },
      debugShowCheckedModeBanner: false,
      // The home property is removed since we're using initialRoute and routes
    );
  }
}
