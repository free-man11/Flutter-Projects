// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mediloop/widgets/avatar_profile.dart';
import 'package:mediloop/widgets/profile_Card.dart';
import 'package:mediloop/widgets/profile_Drug_Schedule.dart';
import 'package:mediloop/widgets/profile_Title.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 318,
                ),
                child: Icon(Icons.more_horiz_rounded),
              ),
              // Header
              ProfileTitle(),
              SizedBox(height: 18),
              // Avatar and Details
              AvatarProfile(),
              SizedBox(height: 22),
              // 3rd Row
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEDEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      size: 26,
                      Icons.female,
                      color: Color(0xFF3853E0),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 85,
                    child: Text(
                      '22 years old',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFA5A8B6),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEDEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      size: 26,
                      Icons.call,
                      color: Color(0xFF3853E0),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    '+48-557-236-980',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA5A8B6),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 149,
                    child: Text(
                      'Overall statistic',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 46),
                  SizedBox(
                    width: 140,
                    child: Text(
                      '3 January, 09:43 am',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFA5A8B6),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ProfileDrugSchedule(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Courses',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 3,
              ),

              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: ProfileCard(
                      number: '3',
                      status: 'Active',
                      image: 'lib/assets/red flowers.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 95),
                    child: ProfileCard(
                      number: '12',
                      status: 'Achieve',
                      image: 'lib/assets/green flowers.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 170),
                    child: Container(
                      width: 168,
                      height: 176,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.50, color: Color(0xFFA5A8B6)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 12, top: 11),
                              child: Text(
                                'Progress',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Image.asset('lib/assets/progress.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
