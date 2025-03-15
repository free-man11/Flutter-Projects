// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  final String date;
  final String title;

  Headers({required this.date, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: TextStyle(
              color: Color(0xFF979AA7),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
