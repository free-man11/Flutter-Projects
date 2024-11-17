// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:food_app/pages/welcome_page.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('lib/assets/dish.png'),
        splashIconSize: 440,
        backgroundColor: Colors.black,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        nextScreen: const welcome_page());
  }
}
