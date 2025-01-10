// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicationScreen extends StatefulWidget {
  @override
  _MedicationScreenState createState() => _MedicationScreenState();
}

class _MedicationScreenState extends State<MedicationScreen> {
  String selectedDuration = '1 month'; // Initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medication Picker')),
      body: Center(
        child: AddMedicationDatePicker(
          selectedDuration: selectedDuration, // Pass the dynamic value
          onDurationSelected: (String newDuration) {
            setState(() {
              selectedDuration = newDuration; // Update the selected duration
            });
          },
          text_Duration: 'Duration',
        ),
      ),
    );
  }
}

class AddMedicationDatePicker extends StatelessWidget {
  final String text_Duration;
  final String selectedDuration;
  final ValueChanged<String> onDurationSelected;

  const AddMedicationDatePicker({
    super.key,
    required this.selectedDuration,
    required this.onDurationSelected,
    required this.text_Duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: () async {
          final String? result = await showCupertinoModalPopup<String>(
            context: context,
            builder: (BuildContext context) {
              return CupertinoActionSheet(
                title: Text('Select Duration'),
                actions: [
                  CupertinoActionSheetAction(
                    child: Text('1 month'),
                    onPressed: () => Navigator.pop(context, '1 month'),
                  ),
                  CupertinoActionSheetAction(
                    child: Text('2 months'),
                    onPressed: () => Navigator.pop(context, '2 months'),
                  ),
                  CupertinoActionSheetAction(
                    child: Text('3 months'),
                    onPressed: () => Navigator.pop(context, '3 months'),
                  ),
                  CupertinoActionSheetAction(
                    child: Text('4 months'),
                    onPressed: () => Navigator.pop(context, '4 months'),
                  ),
                  CupertinoActionSheetAction(
                    child: Text('5 months'),
                    onPressed: () => Navigator.pop(context, '5 months'),
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                ),
              );
            },
          );
          if (result != null) {
            onDurationSelected(result); // Update the value in parent
          }
        },
        child: Container(
          width: 335,
          height: 44,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFF6F6F6),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  text_Duration,
                  style: TextStyle(
                    color: Color(0xFFA5A8B6),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                Spacer(),
                Text(
                  selectedDuration, // Dynamically display the selected duration
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                Icon(Icons.keyboard_arrow_right, color: Color(0xFFA5A8B6)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
