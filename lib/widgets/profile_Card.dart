// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String number;
  final String status;
  final String image;
  const ProfileCard({
    super.key,
    required this.number,
    required this.status,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 89, top: 1),
          child: Image.asset(image),
        ),
        Container(
          width: 150,
          height: 82,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.50, color: Color(0xFFA5A8B6)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 9, top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
