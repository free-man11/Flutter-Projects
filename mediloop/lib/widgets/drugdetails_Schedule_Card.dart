// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String time;
  const ScheduleCard({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 11),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        time,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
