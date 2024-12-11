import 'package:flutter/material.dart';

class DropdownFilter extends StatelessWidget {
  final String selectedValue;
  final VoidCallback onDropdownTap;

  const DropdownFilter(
      {super.key, required this.selectedValue, required this.onDropdownTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDropdownTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Text(selectedValue,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            SizedBox(width: 8),
            Icon(Icons.arrow_downward_sharp),
          ],
        ),
      ),
    );
  }
}
