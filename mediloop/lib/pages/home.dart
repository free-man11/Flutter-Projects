// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mediloop/widgets/home_Drop_Down_Filter.dart';
import 'package:mediloop/widgets/home_Headers.dart';
import 'package:mediloop/widgets/home_Profile_icon.dart';
import 'package:mediloop/widgets/home_ReminderCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedDayIndex = 3;

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
              Headers(date: 'January 4', title: "Today's Reminder"),
              SizedBox(height: spacing * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                    .map((day) => Text(
                          day,
                          style: TextStyle(
                            color: Color(0xFFA5A8B6),
                            fontSize: textSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
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
              SizedBox(height: spacing * 2),
              Row(
                children: [
                  Text(
                    'Time',
                    style: TextStyle(
                      color: Color(0xFFA5A8B6),
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: size.width * 0.1),
                  Text(
                    'Medication',
                    style: TextStyle(
                      color: Color(0xFFA5A8B6),
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  DropdownFilter(
                    selectedValue: 'all',
                    onDropdownTap: () {
                      // do minimize the size
                    },
                  ),
                ],
              ),
              SizedBox(height: spacing * 1.5),
              ReminderCard(
                time: '7:00',
                period: 'AM',
                medicationName: 'Carsil 35mg',
                dose: '2 tablets',
                backgroundColor: Color(0x4C779BF0),
                isCompleted: true,
                drugDescription: '',
              ),
              SizedBox(height: spacing * 2),
              ReminderCard(
                time: '2:00',
                period: 'PM',
                medicationName: 'Vitamin C',
                dose: 'single tablet for the day',
                backgroundColor: Color(0x4CA8CB69),
                isCompleted: true,
                drugDescription: '',
              ),
              SizedBox(height: spacing * 5),
              ReminderCard(
                time: '5:00',
                period: 'PM',
                medicationName: 'Travaprost eye drops',
                dose: '1 drop when about to sleep',
                backgroundColor: Color(0xFFFF9267),
                isCompleted: false,
                drugDescription: '',
              ),
              SizedBox(height: spacing * 2),
              ReminderCard(
                time: '9:00',
                period: 'PM',
                medicationName: 'Nomotears eye drops',
                dose: '4 drops a day',
                backgroundColor: Color(0x4C779BF0),
                isCompleted: false,
                drugDescription: '',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
