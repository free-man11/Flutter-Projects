// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Avatar widget
        Container(
          child: Center(
            child: Text(
              'MW',
              style: TextStyle(
                color: Color(0xFF4C5ED5),
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          width: 86,
          height: 86,
          decoration: ShapeDecoration(
            color: Color(0xFFDBE6FF),
            shape: OvalBorder(),
          ),
        ),
        SizedBox(width: 12), // Reduced spacing between avatar and text
        // User Info
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
          children: [
            Text(
              'Mary Wims',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4), // Space between name and ID
            Text(
              'ID number: 734256676',
              style: TextStyle(
                color: Color(0xFFA5A8B6),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
