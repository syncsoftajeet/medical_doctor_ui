import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:medical_doctor_ui/screen/chat_screen.dart';
import 'package:medical_doctor_ui/screen/main_screen.dart';
import 'package:medical_doctor_ui/screen/message_screen.dart';
import 'package:medical_doctor_ui/screen/schedule_screen.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<IconData> iconList = [Icons.home,Icons.message,Icons.calendar_month,Icons.settings];


  static const List<Widget> _widgetOptions = <Widget>[
   MainScreen(),
    MessageScreen(),
     ScheduleScreen(),
    ChatScreen()
  ];


   int _bottomNavIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        onPressed: () {  },
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 12,
        rightCornerRadius: 12,
        activeColor: Colors.blue,
        inactiveColor: Colors.black,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      body: Container(
        child: _widgetOptions.elementAt(_bottomNavIndex),
      ),
    );
  }
}
