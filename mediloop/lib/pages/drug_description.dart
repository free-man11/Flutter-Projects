// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mediloop/widgets/detail_card.dart';
import 'package:mediloop/widgets/schedule_card.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DrugDescription extends StatelessWidget {
  const DrugDescription({super.key});

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
                            ScheduleCard(time: '07:00-09:00'),
                            SizedBox(width: 20),
                            ScheduleCard(time: '19:00-21:00'),
                          ],
                        ),
                        SizedBox(height: 15),
                        DetailsCard(),
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
                    decoration: ShapeDecoration(
                      color: Color(0xFF3853E0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
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
                          ),
                        ),
                        const SizedBox(height: 13),
                        SizedBox(
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
