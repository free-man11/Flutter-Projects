// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main container for the onboarding screen
      body: Container(
        width: double.infinity, // Full screen width
        height: double.infinity, // Full screen height
        color: Colors.white, // Background color
        child: Stack(
          children: [
            // Background decorative shapes
            Positioned(
              left: 70,
              top: -59,
              child: SizedBox(
                width: 242,
                height: 322,
                child: Stack(
                  children: [
                    // Left blue rounded rectangle
                    Positioned(
                      left: 2.43,
                      top: 0,
                      child: Container(
                        width: 121.61,
                        height: 207.78,
                        decoration: BoxDecoration(
                          color: Color(0xFFB0C5FC),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                            bottomRight: Radius.circular(45),
                          ),
                        ),
                      ),
                    ),
                    // Top gray rounded shape
                    Positioned(
                      left: 124.04,
                      top: 0,
                      child: Container(
                        width: 117.96,
                        height: 106.93,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1E4F5),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(55),
                            bottomRight: Radius.circular(55),
                          ),
                        ),
                      ),
                    ),
                    // Middle blue circular shape
                    Positioned(
                      left: 124.04,
                      top: 106.93,
                      child: Container(
                        width: 104.58,
                        height: 105.71,
                        decoration: BoxDecoration(
                          color: Color(0xFF6085EA),
                          borderRadius: BorderRadius.circular(157),
                        ),
                      ),
                    ),
                    // Bottom left blue shape
                    Positioned(
                      left: 0,
                      top: 207.78,
                      child: Container(
                        width: 117.96,
                        height: 114.22,
                        decoration: BoxDecoration(
                          color: Color(0xFF6085EA),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(41),
                            bottomRight: Radius.circular(36),
                          ),
                        ),
                      ),
                    ),
                    // Bottom right gray shape
                    Positioned(
                      left: 117.96,
                      top: 207.78,
                      child: Container(
                        width: 110.66,
                        height: 114.22,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1E4F5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(47),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Title text for the page
            Positioned(
              left: 20,
              top: 386,
              child: Text(
                'Simplify your\nmedication routine',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            // Description text for the page
            Positioned(
              left: 20,
              top: 487,
              child: SizedBox(
                width: 307, // Ensures the text wraps properly
                child: Text(
                  'We make it easy to manage your medication routine. Input your medication schedule, and let the app take care of the rest.',
                  style: TextStyle(
                    color: Color(0xFF979AA7),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
