// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mediloop/pages/homepage.dart';
import 'package:mediloop/pages/pill_Reminder_prompt.dart';
import 'package:mediloop/screens/onboarding_screens.dart';

class PillPromptPage extends StatelessWidget {
  // List of icons and labels
  final List<Map<String, dynamic>> iconData = [
    {'image': 'lib/assets/appstore.png', 'label': 'App Store'},
    {'image': 'lib/assets/clock.png', 'label': 'Clock'},
    {'image': 'lib/assets/health.png', 'label': 'Health'},
    {'image': 'lib/assets/mail.png', 'label': 'Mail'},
    {'image': 'lib/assets/map.png', 'label': 'Map'},
    // {'image': 'lib/assets/message.png', 'label': 'Message'},
    // {'image': 'lib/assets/music.png', 'label': 'Music'},
    {'image': 'lib/assets/health.png', 'label': 'Health'},
    {'image': 'lib/assets/news.png', 'label': 'News'},
    {'image': 'lib/assets/note.png', 'label': 'Note'},
    {'image': 'lib/assets/podcast.png', 'label': 'Podcast'},
    {'image': 'lib/assets/reminder.png', 'label': 'Reminder'},
    {'image': 'lib/assets/setting.png', 'label': 'Setting'},
    {'image': 'lib/assets/tv.png', 'label': 'Tv'},
    {'image': 'lib/assets/wallet.png', 'label': 'Wallet'},
    {'image': 'lib/assets/appicon.png', 'label': 'Mediloop'},
  ];

  PillPromptPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Trigger the initial dialog after a delay
    Future.delayed(
      const Duration(milliseconds: 1000), // Delay for 1 second
      () {
        showReminderDialog(context);
      },
    );

    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF6EAA76), Colors.black],
              ),
            ),
          ),
          // App icons grid
          Padding(
            padding: const EdgeInsets.only(
                bottom: 20, top: 20), // Adjust bottom padding as needed
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // 4 icons per row
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
              ),
              itemCount: iconData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ),
                    );
                  },
                  child: AppIcon(
                    image: Image.asset(
                      iconData[index]['image'],
                    ),
                    text: iconData[index]['label'],
                  ),
                );
              },
            ),
          ),

          // Dock (bottom bar)
          const Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Dock(),
          ),
        ],
      ),
    );
  }

  // Function to show the pill reminder dialog
  void showReminderDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return const Align(
          alignment: Alignment.topCenter, // Drop from the top
          child: PillReminderPrompt(
            previousPill: 'Carsil 20 mg',
            nextPill: 'Roaccutane 30 mg',
            timeLeft: 'in 19 min',
            nextPillTime: '08:00',
          ),
        );
      },
      transitionDuration:
          const Duration(milliseconds: 1000), // Transition speed
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1), // Start above the screen
            end: Offset.zero, // End at the top
          ).animate(animation),
          child: child,
        );
      },
    );
  }
}

class AppIcon extends StatelessWidget {
  final String text;
  final Widget image;

  const AppIcon({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: image,
    );
  }
}

class Dock extends StatelessWidget {
  const Dock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        color: Color(0xFF666666),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppIcon(
              image: Image.asset('lib/assets/message.png'), text: 'Message'),
          AppIcon(image: Image.asset('lib/assets/music.png'), text: 'Setting'),
          AppIcon(image: Image.asset('lib/assets/phone.png'), text: 'Setting'),
          AppIcon(image: Image.asset('lib/assets/safari.png'), text: 'Setting'),
        ],
      ),
    );
  }
}
