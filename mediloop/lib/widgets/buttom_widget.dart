// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mediloop/pages/add_medication.dart';

// Reusable Placeholder Button Widget
class PlaceholderButton extends StatelessWidget {
  const PlaceholderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: const Color(0xFFEAEDEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              // Navigate to the home screen when 'Done' is tapped
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AddMedication(),
                ),
              );
            },
            child: Icon(
              Icons.add,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
