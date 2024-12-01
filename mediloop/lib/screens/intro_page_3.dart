// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            // Background Shapes
            Positioned(
              left: 33,
              top: 50,
              child: SizedBox(
                width: 242,
                height: 322,
                child: Stack(
                  children: [
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
            // Title Text
            Positioned(
              left: 24,
              top: 420,
              child: Text(
                'Track Your Progress',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Description Text
            Positioned(
              left: 24,
              top: 487,
              child: SizedBox(
                width: 303,
                child: Text(
                  'Monitor your adherence, view missed doses, and celebrate progress towards better health with our intuitive tracking tools',
                  style: TextStyle(
                    color: Color(0xFF989AA8),
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
