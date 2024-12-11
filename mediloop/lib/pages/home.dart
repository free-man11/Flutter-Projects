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
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileIcon(initials: 'PF'),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 36,
                    height: 36,
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
                      child: Icon(Icons.add, size: 24),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Headers(date: 'January 3', title: "Today's Reminder"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                    .map((day) => Text(
                          day,
                          style: TextStyle(
                            color: Color(0xFFA5A8B6),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(height: 8),
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
                      width: 26,
                      height: 26,
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
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Time',
                    style: TextStyle(
                      color: Color(0xFFA5A8B6),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Medication',
                    style: TextStyle(
                      color: Color(0xFFA5A8B6),
                      fontSize: 15,
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
              SizedBox(height: 12),
              ReminderCard(
                time: '7:00',
                period: 'AM',
                medicationName: 'Carsil 35mg',
                dose: '2 tablets',
                backgroundColor: Color(0x4C779BF0),
                isCompleted: true,
                drugDescription: '',
              ),
              SizedBox(height: 10),
              // Add more rows as needed
              ReminderCard(
                time: '2:00',
                period: 'PM',
                medicationName: 'Vitamin C',
                dose: 'single tablet for the day',
                backgroundColor: Color(0x4CA8CB69),
                isCompleted: true,
                drugDescription: '',
              ),

              SizedBox(
                height: 50,
              ),
              ReminderCard(
                time: '5:00',
                period: 'PM',
                medicationName: 'Travaprost eye drops',
                dose: '1 drop when about to sleep',
                backgroundColor: Color(0xFFFF9267),
                isCompleted: false,
                drugDescription: '',
              ),

              SizedBox(
                height: 10,
              ),
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
