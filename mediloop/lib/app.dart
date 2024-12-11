import 'package:flutter/material.dart';
import 'package:mediloop/pages/add_medication.dart';
import 'package:mediloop/pages/drug_description_1.dart';
import 'package:mediloop/pages/drug_description_2.dart';
import 'package:mediloop/pages/home.dart';
import 'package:mediloop/pages/homepage.dart';
import 'package:mediloop/screens/onboarding_screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set the initial route to onboarding
      initialRoute: '/',
      routes: {
        '/': (context) =>
            OnboardingScreens(), // Onboarding screen as the starting point
        '/Homepage': (context) => Homepage(), // Main homepage with tabs
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
