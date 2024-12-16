// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class CalenderRemindercard extends StatelessWidget {
  final String medicationName;

  final String dose;
  final Color backgroundColor;
  final bool isCompleted;
  final String drugDescription; // Added for description
  final Color nestedBackgroundColor;
  final String course;
  final String image; // Add image parameter

  const CalenderRemindercard({
    super.key,
    required this.medicationName,
    required this.dose,
    required this.backgroundColor,
    this.isCompleted = false,
    required this.drugDescription, // Set this as a required parameter
    required this.nestedBackgroundColor,
    required this.course,
    required this.image, // Add image parameter
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Time and period text
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              TextSpan(
                style: TextStyle(
                  color: Color(0xFFA5A8B6),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            ],
          ),
        ),

        // Expanded Container for Medication info
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/drug1',
              );
            },
            child: Container(
              height: 98,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 130,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: nestedBackgroundColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Center(
                          child: Text(
                            course,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: ShapeDecoration(
                          color: nestedBackgroundColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Image.asset(
                            color: Colors.white,
                            image,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    medicationName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      decoration:
                          isCompleted ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  Text(
                    dose,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      decoration:
                          isCompleted ? TextDecoration.lineThrough : null,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
