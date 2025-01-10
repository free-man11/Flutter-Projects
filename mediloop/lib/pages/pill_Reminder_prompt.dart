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
                  color: Colors.white,
                  child: Image.asset(
                    'lib/assets/capsule.png',
                    scale: 2,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                'Pill reminder',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none, // Ensure no underline
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  timeLeft,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none, // Ensure no underline
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Previous pill: $previousPill',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              decoration: TextDecoration.none, // Ensure no underline
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Next pill: ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  decoration: TextDecoration.none, // Ensure no underline
                ),
              ),
              Text(
                nextPill,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none, // Ensure no underline
                ),
              ),
              Spacer(),
              Text(
                nextPillTime,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  decoration: TextDecoration.none, // Ensure no underline
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Dismiss the prompt
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Add custom action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Take',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
