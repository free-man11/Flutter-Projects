// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, unused_element, prefer_final_fields, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediloop/pages/pill_Reminder_prompt.dart';
import 'package:mediloop/widgets/add_Medication_Date_Picker.dart';
import 'package:mediloop/widgets/drugdetails_Schedule_Card.dart';

class AddMedication extends StatefulWidget {
  final bool showBackButton;
  const AddMedication({super.key, this.showBackButton = false});

  @override
  _AddMedicationState createState() => _AddMedicationState();
}

class _AddMedicationState extends State<AddMedication> {
// State Variables
  String _selectedTime = "00:00 AM"; // Default selected time 1
  String _selectedTime2 = "09:00 PM"; // Default selected time 2
  String? _medicationTime; // For the single dynamic ScheduleCard

  List<String> _medicationTimes = []; // Replace _medicationTime

  void _addMedicationTime(String time) {
    setState(() {
      _medicationTimes.add(time);
    });
  }

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
              child: const Text('Done'),
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
    final size = MediaQuery.of(context).size;
    final double paddingHorizontal = size.width * 0.05; // 5% of screen width
    final double iconSize = size.width * 0.10; // 8% of screen width
    final double textSize = size.width * 0.04; // 4% of screen width
    final double spacing = size.height * 0.01; // 1% of screen height
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
                        _selectedTime = 'Capsule'; // Set selected type
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
                              color: _selectedTime == 'Capsule'
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
                        _selectedTime = 'Tablet'; // Set selected type
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 106.37,
                          height: 105,
                          decoration: ShapeDecoration(
                            color: _selectedTime == 'Tablet'
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
                        _selectedTime = 'Drop'; // Set selected type
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 106.37,
                          height: 105,
                          decoration: ShapeDecoration(
                            color: _selectedTime == 'Drop'
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Add Medication Button
                      GestureDetector(
                        onTap: () => _pickTime(
                          context,
                          (newTime) {
                            setState(() {
                              // Set the dynamically added time
                              _medicationTime = newTime;
                            });
                          },
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 11),
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAEDEE),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Icon(Icons.add, size: 24),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      // Single Dynamic ScheduleCard (if exists)
                      if (_medicationTime !=
                          null) // Check if the dynamic time exists
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () => _pickTime(context, (newTime) {
                              setState(() {
                                _medicationTime =
                                    newTime; // Update the dynamic time
                              });
                            }),
                            child: ScheduleCard(time: _medicationTime!),
                          ),
                        ),

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
                            _selectedTime2 = time; // Update _selectedTime2
                          });
                        }),
                        child: ScheduleCard(time: _selectedTime2),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              AddMedicationDatePicker(
                selectedDuration: '1 month',
                onDurationSelected: (String newDuration) {
                  setState(() {
                    var selectedDuration =
                        newDuration; // Update the value on selection
                  });
                },
                text_Duration: 'Duration',
              ),
              SizedBox(
                height: 15,
              ),
              AddMedicationDatePicker(
                selectedDuration: '6 month',
                onDurationSelected: (String newDuration) {
                  setState(() {
                    var selectedDuration =
                        newDuration; // Update the value on selection
                  });
                },
                text_Duration: 'Frequency',
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
                  // showModalBottomSheet(
                  //   context: context,
                  //   isScrollControlled: true,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius:
                  //         BorderRadius.vertical(top: Radius.circular(20)),
                  //   ),
                  //   backgroundColor: Colors.black,
                  //   builder: (BuildContext context) {
                  //     return PillReminderPrompt(
                  //       previousPill: 'Carsil 20 mg',
                  //       nextPill: 'Roaccutane 30 mg',
                  //       timeLeft: 'in 19 min',
                  //       nextPillTime: '08:00',
                  //     );
                  //   },
                  // );
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        showGeneralDialog(
                          context: context,
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            // Your dialog content
                            return Align(
                              alignment:
                                  Alignment.topCenter, // Position at the top
                              child: PillReminderPrompt(
                                previousPill: 'Carsil 20 mg',
                                nextPill: 'Roaccutane 30 mg',
                                timeLeft: 'in 19 min',
                                nextPillTime: '08:00',
                              ),
                            );
                          },
                          transitionDuration:
                              Duration(milliseconds: 1000), // Transition speed
                          transitionBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: Offset(0, -1), // Start above the screen
                                end: Offset(0, 0), // End at the top
                              ).animate(animation),
                              child: child,
                            );
                          },
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
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
