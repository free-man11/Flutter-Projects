import 'package:flutter/material.dart';

class ReminderCard extends StatelessWidget {
  final String time;
  final String period;
  final String medicationName;

  final String dose;
  final Color backgroundColor;
  final bool isCompleted;
  final String drugDescription; // Added for description

  const ReminderCard({
    super.key,
    required this.time,
    required this.period,
    required this.medicationName,
    required this.dose,
    required this.backgroundColor,
    this.isCompleted = false,
    required this.drugDescription, // Set this as a required parameter
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
                text: '$time\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              TextSpan(
                text: period,
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
        // Vertical Divider
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 59, // Match the height of the container

          child: VerticalDivider(
            color: Colors.grey.shade400,
            // Set divider color
            thickness: 2, // Set the thickness of the divider
            width: 20, // Space between the divider and the text
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
              height: 59,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
