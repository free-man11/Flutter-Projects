// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class desktopScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true, // Ensure the AppBar overlaps the body
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent, // Transparent AppBar
        automaticallyImplyLeading: false, // Removes the default back button
        elevation: 0, // Removes shadow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // LOGO on the left
            Row(
              children: [
                SvgPicture.asset(width: 60, height: 40, 'web/assets/logo.svg'),
                const SizedBox(width: 10),
                const Text(
                  'Zerra',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Bw Gradual DEMO',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            // MENU in the middle
            Row(
              children: [
                Text(
                  'Home',
                  style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                SizedBox(width: 32),
                Text(
                  'Rooms',
                  style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                SizedBox(width: 32),
                Text(
                  'Facilities',
                  style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                SizedBox(width: 32),
                Text(
                  'Offers',
                  style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                SizedBox(width: 32),
                Text(
                  'Wedding',
                  style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                SizedBox(width: 32),
                Text(
                  'About',
                  style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
                SizedBox(width: 32),
                Text(
                  'Blog',
                  style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              ],
            ),
            Container(
              width: 163,
              height: 55,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 9),
                  SvgPicture.asset(
                    'web/assets/arrow.svg',
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            )

            // CONTACT US button on the right
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              height: screenHeight,
              width: screenWidth,
              'web/assets/home.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 218),
              child: Center(
                child: Text(
                  'Helping You Find The Most Comfortable Place',
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
              padding: EdgeInsets.only(top: 300),
              child: Center(
                child: Text(
                  'It is a long established fact that a reader will be distracted by the readable\n'
                  'content of a page when looking at its layout.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                  ),
                  softWrap: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
