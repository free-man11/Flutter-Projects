// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mediloop/screens/onboarding_screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove banner
      debugShowCheckedModeBanner: false,
      // Theme for the app and modifying the default light theme
      home: OnboardingScreens(),
    );
  }
}
