// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:mediloop/widgets/calender_Headers.dart';
import 'package:mediloop/widgets/calender_ReminderCard.dart';
import 'package:mediloop/widgets/home_Profile_icon.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _HomeState();
}

class _HomeState extends State<Calender> {
  int _selectedDayIndex = 3;
  bool isActive = true; // Default to showing Active
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double paddingHorizontal = size.width * 0.05; // 5% of screen width
    final double iconSize = size.width * 0.10; // 8% of screen width
    final double textSize = size.width * 0.04; // 4% of screen width
    final double spacing = size.height * 0.01; // 1% of screen height

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: spacing),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileIcon(initials: 'PF'),
                  SizedBox(height: spacing),
                  Container(
                    margin: EdgeInsets.only(top: spacing * 2),
                    width: iconSize,
                    height: iconSize,
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEDEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/add',
                          arguments: {'showBackButton': true},
                        );
                      },
                      child: Icon(Icons.add, size: iconSize * 0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(height: spacing * 2),
              CalenderHeaders(title: 'Calender', subtitle: 'January 2024'),
              SizedBox(height: spacing * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                    .map(
                      (day) => Text(
                        day,
                        style: TextStyle(
                          color: Color(0xFFA5A8B6),
                          fontSize: textSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: spacing),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedDayIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: size.width * 0.07, // 7% of screen width
                      height: size.width * 0.07, // Square
                      decoration: BoxDecoration(
                        color: _selectedDayIndex == index
                            ? Color(0xFF6085EA)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: _selectedDayIndex == index
                              ? Colors.white
                              : Colors.black,
                          fontSize: textSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: spacing),
              SizedBox(height: spacing * 2),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isActive = true;
                      });
                    },
                    child: Container(
                      width: 58,
                      height: 26,
                      decoration: BoxDecoration(
                        color: isActive ? Color(0xFF666774) : Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Active',
                          style: TextStyle(
                            color: isActive ? Colors.white : Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isActive = false;
                      });
                    },
                    child: Container(
                      width: 58,
                      height: 26,
                      decoration: BoxDecoration(
                        color: !isActive ? Color(0xFF666774) : Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Archive',
                          style: TextStyle(
                            color: isActive ? Colors.black : Colors.white,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Content based on active tab
              SizedBox(
                child: isActive
                    ? SingleChildScrollView(
                        child: _buildActiveContent(),
                      )
                    : SingleChildScrollView(
                        child: _buildArchiveContent(),
                      ),
              ),
            ],
          ),
        ),
        SizedBox(height: spacing * 1.5),
      ],
    );
  }
}

Widget _buildActiveContent() {
  return SingleChildScrollView(
    child: Column(
      children: [
        // Move the CalendarRemindercard widgets to the start
        CalenderRemindercard(
          medicationName: 'Carsil 35mg',
          dose: '2 tablets',
          backgroundColor: Color(0xFFE1E4F5),
          isCompleted: false,
          drugDescription: '',
          nestedBackgroundColor: Color(0xFF6085EA),
          course: 'Course ends soon',
          image: 'lib/assets/tablet.png',
        ),
        SizedBox(height: 10),
        CalenderRemindercard(
          medicationName: 'Vitamin C',
          dose: 'single tablet for the day',
          backgroundColor: Color(0xFFE1EFD5),
          isCompleted: true,
          drugDescription: '',
          nestedBackgroundColor: Color(0xFFA8CB69),
          course: 'Course has ended',
          image: 'lib/assets/capsule.png',
        ),
        SizedBox(height: 10),
        CalenderRemindercard(
          medicationName: 'Travaprost eye drops',
          dose: '1 drop when about to sleep',
          backgroundColor: Color(0xFFFDEDE6),
          isCompleted: false,
          drugDescription: '',
          nestedBackgroundColor: Color(0xFFFF9267),
          course: 'Course ends soon',
          image: 'lib/assets/drop.png',
        ),
      ],
    ),
  );
}

Widget _buildArchiveContent() {
  return SingleChildScrollView(
    child: Column(
      children: [
        // Move the CalendarRemindercard widgets to the start
        CalenderRemindercard(
          medicationName: 'Procold',
          dose: '2 tablets',
          backgroundColor: Color.fromARGB(255, 249, 247, 181),
          isCompleted: false,
          drugDescription: '',
          nestedBackgroundColor: Color.fromARGB(255, 219, 215, 2),
          course: 'Course ends soon',
          image: 'lib/assets/tablet.png',
        ),
        SizedBox(height: 10),
        CalenderRemindercard(
          medicationName: 'Vitamin C',
          dose: 'single tablet for the day',
          backgroundColor: Color.fromARGB(255, 149, 237, 207),
          isCompleted: true,
          drugDescription: '',
          nestedBackgroundColor: Color.fromARGB(255, 14, 206, 142),
          course: 'Course has ended',
          image: 'lib/assets/capsule.png',
        ),
        SizedBox(height: 10),
        CalenderRemindercard(
          medicationName: 'Travaprost eye drops',
          dose: '1 drop when about to sleep',
          backgroundColor: Color.fromARGB(255, 245, 175, 230),
          isCompleted: false,
          drugDescription: '',
          nestedBackgroundColor: Color.fromARGB(255, 229, 121, 206),
          course: 'Course ends soon',
          image: 'lib/assets/drop.png',
        ),
      ],
    ),
  );
}
