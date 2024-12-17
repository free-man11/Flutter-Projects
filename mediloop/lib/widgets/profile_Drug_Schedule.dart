// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class ProfileDrugSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332,
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrugDetails(
              day: 'Today:',
              dose: ' 1/4 medications taken',
              image: 'lib/assets/Vector.png'),
          SizedBox(height: 17),
          DrugDetails(
              day: 'This month:',
              dose: ' 3/31 taken',
              image: 'lib/assets/calender.png'),
        ],
      ),
    );
  }
}

class DrugDetails extends StatelessWidget {
  final String day;
  final String dose;
  final String image;

  const DrugDetails({
    super.key,
    required this.day,
    required this.dose,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 24,
          height: 24,
          color: Color(0xFFA5A8B6),
        ),
        SizedBox(
          width: 3,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: day,
                style: TextStyle(
                  color: Color(0xFFA5A8B6),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              TextSpan(
                text: dose,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
