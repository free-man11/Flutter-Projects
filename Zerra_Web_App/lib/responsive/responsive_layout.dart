// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;
  final Widget tabletScaffold;

  // Constructor with named parameters
  ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 542) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }

  double getResponsiveFontSize(BuildContext context, double baseSize) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 542) {
      return baseSize * 0.8;
    } else if (screenWidth < 1100) {
      return baseSize * 1.0;
    } else {
      return baseSize * 1.2;
    }
  }
}
