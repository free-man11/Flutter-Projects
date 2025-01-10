// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class PillReminderPrompt extends StatelessWidget {
  final String previousPill;
  final String nextPill;
  final String timeLeft;
  final String nextPillTime;

  const PillReminderPrompt({
    Key? key,
    required this.previousPill,
    required this.nextPill,
    required this.timeLeft,
    required this.nextPillTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(38),
                child: Container(
                  height: 28,
                  width: 28,
                  color: Colors.blue,
                  child: Image.asset(
                    'lib/assets/Vector.png',
                    scale: 1,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                'Pill reminder',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none, // Ensure no underline
                ),
              ),
              Spacer(),
              Container(
                width: 82,
                height: 28,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
                child: Center(
                  child: Text(
                    'in 19 min',
                    style: TextStyle(
                      decoration: TextDecoration.none, // Ensure no underline
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Previous pill: Carsil 20 mg',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA5A8B6),
              fontSize: 17,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none, // Ensure no underline
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Next pill:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none, // Ensure no underline
                      ),
                    ),
                    TextSpan(
                      text: ' Roaccutane 30 mg',
                      style: TextStyle(
                        color: Color(0xFF5161F8),
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none, // Ensure no underline
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 147,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFC7D0FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          decoration:
                              TextDecoration.none, // Ensure no underline
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 147,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFF5161F8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Take',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          decoration:
                              TextDecoration.none, // Ensure no underline
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
