import "package:flutter/material.dart";
import '../screens/mobile/mobile_screen.dart';
import '../screens/tablet/table_screen.dart';

class DeviceSelection extends StatelessWidget {
  const DeviceSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mobileSize = MediaQuery.of(context).size.shortestSide;
    final bool isMobile = mobileSize < 600;
    return Scaffold(
      body: isMobile ? const MobileScreen() : const TabletScreen(),
    );
  }
}
