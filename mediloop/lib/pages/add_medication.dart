// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mediloop/widgets/drugdetails_Schedule_Card.dart';

class AddMedication extends StatefulWidget {
  final bool showBackButton;
  const AddMedication({super.key, this.showBackButton = false});

  @override
  _AddMedicationState createState() => _AddMedicationState();
}

class _AddMedicationState extends State<AddMedication> {
  String _selectedType = ''; // Track the selected type

  void _showTimePicker(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when the user taps outside
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
            leading: widget.showBackButton
                ? IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF222329),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                : null,
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
                  Icons.more_horiz,
                  color: Color(0xFF222329),
                ),
                onPressed: () {
                  // Define what happens when the icon is tapped
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Type',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedType = 'Capsule'; // Set selected type
                      });
                    },
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            width: 106.37,
                            height: 105,
                            decoration: ShapeDecoration(
                              color: _selectedType == 'Capsule'
                                  ? Color(0xFFF1F9E9) // Highlighted color
                                  : Color(0xFFF6F6F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          top: 25,
                          child: Image.asset('lib/assets/capsule.png'),
                        ),
                        Positioned(
                          left: 45,
                          top: 78,
                          child: Text(
                            'Capsule',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 7.45),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedType = 'Tablet'; // Set selected type
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 106.37,
                          height: 105,
                          decoration: ShapeDecoration(
                            color: _selectedType == 'Tablet'
                                ? Color(0xFFE2EAFE) // Highlighted color
                                : Color(0xFFF6F6F6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 27,
                          top: 18,
                          child: Image.asset('lib/assets/tablet.png'),
                        ),
                        Positioned(
                          left: 35,
                          top: 78,
                          child: Text(
                            'Tablet',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 7.45),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedType = 'Drop'; // Set selected type
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 106.37,
                          height: 105,
                          decoration: ShapeDecoration(
                            color: _selectedType == 'Drop'
                                ? Color(0xFFFFDBDB) // Highlighted color
                                : Color(0xFFF6F6F6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 35,
                          top: 20,
                          child: Image.asset('lib/assets/drop.png'),
                        ),
                        Positioned(
                          left: 35,
                          top: 78,
                          child: Text(
                            'Drop',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 22),
                child: Text(
                  'General information\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: SizedBox(
                  width: 360,
                  height: 44,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Name:',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF6F6F6)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF6F6F6)),
                        ),
                        fillColor: Color(0xFFF6F6F6),
                        filled: true,
                      ),
                      onSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: SizedBox(
                  width: 360,
                  height: 44,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Dose:',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF6F6F6)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF6F6F6)),
                        ),
                        fillColor: Color(0xFFF6F6F6),
                        filled: true,
                      ),
                      onSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Timeline & schedule',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    // Add Medication Button
                    GestureDetector(
                      onTap: () => _showTimePicker(context),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEAEDEE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => _showTimePicker(context),
                      child: ScheduleCard(time: '07:00-09:00'),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => _showTimePicker(context),
                      child: ScheduleCard(time: '19:00-21:00'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  width: 335,
                  height: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F6F6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Duration',
                          style: TextStyle(
                            color: Color(0xFFA5A8B6),
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 160),
                          child: Text(
                            '6 months',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(Icons.keyboard_arrow_right,
                              color: Color(0xFFA5A8B6)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  width: 335,
                  height: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F6F6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Frequecy',
                          style: TextStyle(
                            color: Color(0xFFA5A8B6),
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 160),
                          child: Text(
                            '6 months',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(Icons.keyboard_arrow_right,
                              color: Color(0xFFA5A8B6)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 23),
                child: Text(
                  'Notifications\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 335,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: Color(0xFF3853E0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
