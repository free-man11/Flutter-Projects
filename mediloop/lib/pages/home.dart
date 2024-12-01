// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:mediloop/pages/drug_description.dart';
import 'package:mediloop/widgets/buttom_widget.dart';
import 'package:mediloop/widgets/profile_icon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section: Top Row (Profile Icon and Placeholder Button)
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileIcon(initials: 'PF'),
                PlaceholderButton(),
              ],
            ),
            SizedBox(height: 10),

            // Section: Date and Title
            Text(
              'January 3',
              style: TextStyle(
                color: Color(0xFF979AA7),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Today reminders',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),

            // Section: Days of the Week
            _buildDaysOfWeek(),
            SizedBox(height: 8),

            // Section: Dates with Highlighted Selection
            _buildDateSelector(),
            SizedBox(height: 20),

            // Section: Headers for Time and Medication
            _buildHeaders(context),
            SizedBox(height: 12),

            // Reminder Items
            _buildReminderRow(
              context: context,
              time: '7:00',
              period: 'AM',
              medication: 'Carsil 35mg',
              dose: '2 tablets',
              color: Color(0xFF769BF0),
              isCompleted: true,
            ),
            SizedBox(height: 10),

            _buildReminderRow(
              context: context,
              time: '12:00',
              period: 'PM',
              medication: 'CardioActive 20ml',
              dose: '20 drops',
              color: Color(0xFFFF9267),
              isCompleted: true,
            ),
            SizedBox(height: 10),

            _buildReminderRow(
              context: context,
              time: '6:00',
              period: 'PM',
              medication: 'Carsil 35mg',
              dose: '2 tablets',
              color: Color(0xFFBBCBF1),
              isCompleted: true,
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Helper: Days of the Week
  Widget _buildDaysOfWeek() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
          .map(
            (day) => Text(
              day,
              style: TextStyle(
                color: Color(0xFFA5A8B6),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
          .toList(),
    );
  }

  // Helper: Date Selector
  Widget _buildDateSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(7, (index) {
        bool isSelected = index == 3;
        return Container(
          alignment: Alignment.center,
          width: 26,
          height: 26,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFF6085EA) : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '${index + 1}',
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }),
    );
  }

  // Helper: Headers
  Widget _buildHeaders(BuildContext context) {
    return Row(
      children: [
        Text(
          'Time',
          style: TextStyle(
            color: Color(0xFFA5A8B6),
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 10),
        Text(
          'Medication',
          style: TextStyle(
            color: Color(0xFFA5A8B6),
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        _buildDropdown(),
      ],
    );
  }

  // Helper: Dropdown
  Widget _buildDropdown() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Text(
            'all',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.arrow_downward_sharp),
        ],
      ),
    );
  }

  // Helper: Reminder Row
  Widget _buildReminderRow({
    required BuildContext context,
    required String time,
    required String period,
    required String medication,
    required String dose,
    required Color color,
    required bool isCompleted,
  }) {
    return SizedBox(
      width: 333,
      height: 59,
      child: Stack(
        children: [
          // Time display
          Positioned(
            left: 0,
            top: 8,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '$time\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: period,
                    style: TextStyle(
                      color: Color(0xFFA5A8B6),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Medication details with GestureDetector
          Positioned(
            left: 84,
            top: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrugDescription(),
                  ),
                );
              },
              child: Container(
                width: 249,
                height: 59,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      medication,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        decoration: isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    Text(
                      dose,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
