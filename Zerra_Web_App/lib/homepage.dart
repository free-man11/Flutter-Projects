import 'package:flutter/material.dart';
import 'package:my_web_app/responsive/desktop_scaffold.dart';
import 'package:my_web_app/responsive/mobile_scaffold.dart';
import 'package:my_web_app/responsive/responsive_layout.dart';
import 'package:my_web_app/responsive/tablet_scaffold.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: mobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: desktopScaffold(),
      ),
    );
  }
}
