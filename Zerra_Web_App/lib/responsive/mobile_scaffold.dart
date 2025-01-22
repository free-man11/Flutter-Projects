// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_web_app/responsive/constants.dart';
import 'package:my_web_app/widgets/dot.dart';

class mobileScaffold extends StatelessWidget {
  const mobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true, // Ensure the AppBar overlaps the content

      appBar: myAppBar,

      drawer: myDrawer,

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background Image
            Stack(
              children: [
                Image.asset(
                  height: screenHeight,
                  width: screenWidth,
                  'web/assets/home.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Center(
                    child: Text(
                      'Helping You Find The Most Comfortable Place',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 600),
                  child: Center(
                    child: Text(
                      'It is a long established fact that a reader\n will be distracted by the readable content\n of a page when looking at its layout.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Dot(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
