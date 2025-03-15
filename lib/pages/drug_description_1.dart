// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediloop/widgets/drugdetails_Cards_Tiles.dart';
import 'package:mediloop/widgets/drugdetails_Schedule_Card.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DrugDescription1 extends StatefulWidget {
  const DrugDescription1({super.key});

  @override
  State<DrugDescription1> createState() => _DrugDescriptionState();
}

class _DrugDescriptionState extends State<DrugDescription1> {
  String _selectedTime = "06:00 AM"; // Default selected time 1
  String _selectedTime2 = "09:00 PM"; // Default selected time 2

  void _pickTime(BuildContext context, Function(String) onTimeChanged) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 260,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (DateTime newDateTime) {
                  int hour = newDateTime.hour % 12 == 0
                      ? 12
                      : newDateTime.hour % 12; // Convert to 12-hour format
                  String period = newDateTime.hour >= 12 ? 'PM' : 'AM';
                  String minute = newDateTime.minute.toString().padLeft(2, '0');
                  String formattedTime = '$hour:$minute $period';
                  onTimeChanged(formattedTime); // Callback to update the time
                },
              ),
            ),
            CupertinoButton(
              child: Text(
                'Done',
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.06),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
            ),
            // The back arrow
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFF222329),
              ),
              onPressed: () {
                // Handle back navigation
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Medication',
              style: TextStyle(
                color: Color(0xFF222329),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.more_horiz, // Replace with your desired icon
                  color: Color(0xFF222329),
                ),
                onPressed: () {
                  // Define what happens when the icon is tapped
                  print('Notification icon pressed');
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 0), // No extra space below the AppBar
                  child: Container(
                    width: screenWidth,
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Active course',
                          style: TextStyle(
                            color: Color(0xFFA5A8B6),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Roaccutane 30mg',
                          style: TextStyle(
                            color: Color(0xFF222329),
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Isotretinoin, also known as 13-cis-retinoic acid and sold under the brand name Accutane among others, is a medication primarily used to treat severe acne',
                          style: TextStyle(
                            color: Color(0xFF222329),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Schedule',
                          style: TextStyle(
                            color: Color(0xFF222329),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            // First Default ScheduleCard
                            GestureDetector(
                              onTap: () => _pickTime(context, (time) {
                                setState(() {
                                  _selectedTime = time; // Update _selectedTime
                                });
                              }),
                              child: ScheduleCard(time: _selectedTime),
                            ),

                            SizedBox(width: 10),

                            // Second Default ScheduleCard
                            GestureDetector(
                              onTap: () => _pickTime(context, (time) {
                                setState(() {
                                  _selectedTime2 =
                                      time; // Update _selectedTime2
                                });
                              }),
                              child: ScheduleCard(time: _selectedTime2),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        CardsTiles(),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  // Progress
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: 157,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFD9D9D9), width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Progress',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            Text(
                              'Course started 12 Jan 2023',
                              style: TextStyle(
                                color: Color(0xFFA5A8B6),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 6),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Container(
                                width: 109,
                                height: 109,
                                child: Stack(
                                  children: [
                                    CircularPercentIndicator(
                                      radius: 50.0, // Size of the circle
                                      lineWidth:
                                          6.0, // Width of the progress line
                                      percent: 0.5, // Progress (50%)
                                      center: Text(
                                        "50%", // Text in the center
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      progressColor: Color(
                                          0xFFA8CB69), // Progress bar color
                                      backgroundColor:
                                          Colors.grey[200]!, // Background color
                                      animation: true, // Enable animation
                                      animationDuration:
                                          1000, // Duration in milliseconds
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),

                  //possible side effects
                  Container(
                    width: 157,
                    height: 180,
                    padding:
                        const EdgeInsets.only(top: 92, left: 11, bottom: 14),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF3853E0),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Transform.scale(
                            scale: 1.5,
                            child: Image.asset(
                              'lib/assets/blue flowers.png', // Path to your image
                              width: 400, // Adjust width
                              height: 400, // Adjust height
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: 188,
                            height: 26,
                            child: Text(
                              'Possible side effects',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                              overflow: TextOverflow
                                  .fade, // Adds "..." at the cutoff point
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 35),
                          child: SizedBox(
                            width: 144,
                            child: Text(
                              'Learn more about this medication, its side effect',
                              style: TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
