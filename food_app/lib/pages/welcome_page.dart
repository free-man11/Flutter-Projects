import 'package:flutter/material.dart';
import 'package:food_app/pages/food_details.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(82, 173, 58, 20),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
            child: Image.asset(
              'lib/assets/food.png',
              height: 300,
              width: 300,
            ),
          ),
          const Text(
            '''Fast delivery at
your doorstep''',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
          ),

          const SizedBox(
            height: 20,
          ),

          const Text(
            '''Home delivery and online reservation
       system for restaurants & cafe''',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),

          const SizedBox(
            height: 50,
          ),

          // Bottom bar
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 70,
                width: 350,
                decoration: const BoxDecoration(color: Colors.white),
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const food_details();
                      }),
                    );
                  },
                  child: const Text(
                    '''Let's Explore''',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(82, 173, 58, 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
