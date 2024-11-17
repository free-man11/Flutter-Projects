// ignore_for_file: file_names, prefer_const_constructors, camel_case_types, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_app/pages/welcome_page.dart';

class food_details extends StatelessWidget {
  const food_details({super.key});

  @override
  Widget build(BuildContext context) {
    // add  var/final for the reduction of the white
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // green background
          Container(
            width: screenSize.width,
            color: Color.fromRGBO(82, 173, 58, 20),
          ),

          // leading arrow backward icon
          Positioned(
            top: screenSize.height * 0.08,
            left: screenSize.width * 0.001,

            // Routing to the welcome_page
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) {
                    return const welcome_page();
                  }),
                );
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // action love icon
          Positioned(
            top: screenSize.height * 0.08,
            right: screenSize.width * 0.05,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),

          // text (Food details)
          Positioned(
            top: 90,
            left: 130,
            child: Text(
              'Food Details',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),

          // white background
          Positioned(
            top: screenSize.height * 0.30,
            child: Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
          ),

          //Image
          Padding(
            padding: EdgeInsets.symmetric(vertical: 120, horizontal: 50),
            child: SizedBox(
              height: 350,
              width: 350,
              child: Image.asset(
                'lib/assets/food.png',
              ),
            ),
          ),

          // Text(Avocada Salad)
          Positioned(
            top: 450,
            left: 20,
            child: Container(
              child: Text(
                'Avocada Salad',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          // Text 15.00$
          Positioned(
            top: 490,
            left: 20,
            child: Container(
              child: Text(
                '\$15.00',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.green),
              ),
            ),
          ),

          // bottom (- 1 +)
          Positioned(
            top: 460,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(color: Colors.green),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 6,
                  ),
                  child: Text(
                    '- 1 +',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Main row for the whole 3 tools
          Positioned(
            top: 220,
            child: Row(
              children: [
                // Row for fav
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 330),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.star,
                          color: Color.fromRGBO(251, 183, 37, 10),
                          size: 30,
                        ),
                      ),
                      Container(
                        child: Text(
                          '4.5',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),

                // Row for blood Calories
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 330),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.bloodtype_sharp,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                      Container(
                        child: Text(
                          '100 kal',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 30,
                ),
                // Row for to time
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 330),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.timelapse,
                          color: Color.fromRGBO(251, 183, 37, 10),
                          size: 30,
                        ),
                      ),
                      Container(
                        child: Text(
                          '20min',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // text(About food)
          Positioned(
            top: 600,
            left: 20,
            child: Container(
              child: Text(
                'About food',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          Positioned(
            top: 650,
            left: 20,
            child: Container(
              child: Text(
                textAlign: TextAlign.justify,
                '''
Lorem ipsum dolor sit amet, consectetur 
adipiscing elit. Et cursus tortor metus
suspendisse sed 
              ''',
                style: TextStyle(
                  color: Color.fromARGB(255, 71, 63, 63),
                  fontSize: 15,
                ),
              ),
            ),
          ),

          //bottom
          Positioned(
            top: 750,
            left: 10,
            right: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(color: Colors.green),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 120,
                  ),
                  child: Text(
                    '''Add to cart''',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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
