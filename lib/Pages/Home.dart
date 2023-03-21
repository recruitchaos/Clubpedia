import 'package:clubpedia/Constants/AppColors.dart';
import 'package:clubpedia/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Alerts.dart';
import 'Clubs.dart';
import 'Events.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Events(),
    Clubs(),
    Alerts()
  ];
  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(42)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GNav(
            selectedIndex: _selectedIndex,
              onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
              },
              gap: 8,
              activeColor: primaryColor,
                tabBorderRadius: 12,
                color: secondaryColor,
                backgroundColor: primaryColor,
                tabBackgroundColor: Colors.grey.shade800,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(icon: Icons.home_filled,text: "Home",),
                  GButton(icon: Icons.event,text: "Events",),
                  GButton(icon: Icons.group,text: "Clubs", ),
                  GButton(icon: Icons.notifications, text: "Alerts",),

                ]),

          ),

        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
