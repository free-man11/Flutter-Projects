import 'package:flutter/material.dart';
import 'package:my_web_app/responsive/constants.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true, // Overlay AppBar on content
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      drawer: myDrawer,

      body: Stack(
        children: [
          // Background Image
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset(
              'web/assets/home.png',
              fit: BoxFit.cover,
            ),
          ),

          // Overlapping Content
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 118),
                  child: Center(
                    child: Text(
                      'Helping You Find The Most\nComfortable Place',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
