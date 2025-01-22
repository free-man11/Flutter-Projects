import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_app/homepage.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme(
          Theme.of(context)
              .textTheme, // Inherit other text styles from the theme
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, // AppBar transparent globally
          elevation: 0, // Remove elevation globally
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
