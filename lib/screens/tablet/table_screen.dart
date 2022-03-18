import 'package:flutter/material.dart';
import 'package:unit_converter/screens/common/setting_page.dart';
import 'home_screen.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  int _selectedIndex = 0;
  static const List _screenOptions = [
    HomeScreen(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screenOptions.elementAt(
        _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/house.png",
              height: 30.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/settings.png",
              height: 40.0,
            ),
            label: "Settings",
          ),
        ],
        selectedFontSize: isPortrait ? 22 : 20,
        unselectedFontSize: isPortrait ? 22 : 20,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
