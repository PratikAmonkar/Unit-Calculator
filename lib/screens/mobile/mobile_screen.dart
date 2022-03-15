import 'package:flutter/material.dart';

import '../common/setting_page.dart';
import 'home_screen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    CategoryPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(
        _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/house.png",
              height: 20.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/settings.png",
              height: 20.0,
            ),
            label: "Settings",
          ),
        ],
        selectedFontSize: isPortrait ? 15 : 12,
        unselectedFontSize: isPortrait ? 15 : 12,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
