// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  final PageController controller;
  final int count;

  const CustomSmoothIndicator({
    required this.controller,
    required this.count,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: WormEffect(
        activeDotColor: Colors.blue,
        dotHeight: 8,
        dotWidth: 8,
      ),
    );
  }
}
