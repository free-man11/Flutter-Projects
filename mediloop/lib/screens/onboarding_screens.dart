// ignore_for_file: file_names, prefer_final_fields, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mediloop/screens/intro_page_1.dart'; // First onboarding screen
import 'package:mediloop/screens/intro_page_2.dart'; // Second onboarding screen
import 'package:mediloop/screens/intro_page_3.dart'; // Third onboarding screen
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // For page indicators

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  // PageController to manage page transitions
  final PageController _controller = PageController();

  // Flag to track if the user is on the last onboarding page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Stack allows overlaying widgets on top of each other
      body: Stack(
        children: [
          // PageView for swiping through onboarding screens
          PageView(
            controller: _controller, // Controls the pages
            onPageChanged: (index) {
              setState(() {
                // Check if the user is on the last page
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(), // First onboarding screen
              IntroPage2(), // Second onboarding screen
              IntroPage3(), // Third onboarding screen
            ],
          ),

          // Navigation controls (e.g., Skip, Done, Page Indicator)
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10), // Add some padding
            child: Container(
              alignment: Alignment(0, 0.95), // Position near the bottom center
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Page Indicator
                  SmoothPageIndicator(
                    controller: _controller, // Connect to PageController
                    effect: ExpandingDotsEffect(
                      expansionFactor: 2,
                      dotWidth: 16,
                      dotHeight: 8,
                      dotColor: Color(0xFFD9D9D9),
                      activeDotColor: Color.fromARGB(255, 99, 144, 255),
                    ),

                    count: 3, // Number of onboarding pages
                  ),

                  // Skip or Done Button
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, '/Homepage');
                          },
                          child: Text('Done',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6085EA),
                              )),
                        )
                      : GestureDetector(
                          onTap: () {
                            // Skip to the last page
                            _controller.jumpToPage(2);
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6085EA),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
