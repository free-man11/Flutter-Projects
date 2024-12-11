// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Reusable Profile Icon Widget
class ProfileIcon extends StatelessWidget {
  final String initials;

  const ProfileIcon({
    required this.initials,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: const Color(0xFFDBE6FF),
          borderRadius: BorderRadius.circular(18),
        ),
        alignment: Alignment.center,
        child: Text(
          initials,
          style: const TextStyle(
            color: Color(0xFF4C5ED5),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
