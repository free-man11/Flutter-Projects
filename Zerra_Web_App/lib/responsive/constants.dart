import 'package:flutter/material.dart';

var myAppBar = AppBar(
  centerTitle: true, // Center the title in the AppBar
  leading: Builder(
    builder: (context) {
      return IconButton(
        icon: Icon(Icons.menu, size: 30, color: Colors.white), // Custom icon
        onPressed: () {
          Scaffold.of(context).openDrawer(); // Open the drawer
        },
      );
    },
  ),

  title: Row(
    mainAxisSize: MainAxisSize.min, // Shrink to fit the contents
    children: [
      const Text(
        'Zerra',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: 'Bw Gradual DEMO',
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  ),
  backgroundColor: Colors.transparent,
  iconTheme: const IconThemeData(color: Colors.white),
);

var myDrawer = Drawer(
  backgroundColor: Colors.white,
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(Icons.favorite),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Bw Gradual DEMO',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.room),
        title: Text(
          'Rooms',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Bw Gradual DEMO',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.house),
        title: Text(
          'Facilities',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Bw Gradual DEMO',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'Offers',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Bw Gradual DEMO',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'Wedding',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Bw Gradual DEMO',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'About',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Bw Gradual DEMO',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'Blog',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Bw Gradual DEMO',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  ),
);
