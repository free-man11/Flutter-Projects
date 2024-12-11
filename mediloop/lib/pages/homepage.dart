// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mediloop/pages/add_medication.dart';
import 'package:mediloop/pages/calender.dart';
import 'package:mediloop/pages/home.dart';
import 'package:mediloop/pages/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Calender(),
    AddMedication(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            bottom: 5, left: 5), // Add padding from the bottom
        child: SafeArea(
          child: GNav(
            selectedIndex: _selectedIndex, // Keeps track of the selected tab
            tabBorderRadius: 20,
            onTabChange: _navigationBottomBar, // Update tab on selection
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            color: const Color.fromARGB(255, 6, 3, 3), // Unselected item color
            activeColor: Colors.black, // Selected item color
            tabActiveBorder:
                Border.all(color: Colors.black, width: 1), // tab button border
            duration: Duration(milliseconds: 500),

            gap: 8, // Space between icon and text
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.calendar_today,
                text: 'Calendar',
              ),
              GButton(
                icon: Icons.add,
                text: 'Drug',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
