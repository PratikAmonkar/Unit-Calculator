import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/functions/mass_unit_convert.dart';
import 'package:unit_converter/screens/common/binary_coode_category_page.dart';
import 'package:unit_converter/screens/common/force_category_page.dart';
import 'package:unit_converter/screens/common/gas_pump_category_page.dart';
import 'package:unit_converter/screens/common/shoe_size_category_page.dart';
import 'package:unit_converter/screens/common/speed_category_page.dart';
import 'package:unit_converter/screens/common/torque_category_page.dart';
import 'package:unit_converter/widgets/alertbox_widget.dart';

import 'angle_category_page.dart';
import 'area_category_page.dart';
import 'data_category_page.dart';
import 'length_category_page.dart';
import 'temperature_category_page.dart';
import 'time_category_page.dart';
import 'volume_category_page.dart';

class MassCategoryPage extends StatefulWidget {
  const MassCategoryPage({Key? key}) : super(key: key);

  @override
  State<MassCategoryPage> createState() => _AngleCategoryPageState();
}

class _AngleCategoryPageState extends State<MassCategoryPage> {
  String firstIntialDropDownValue = 'grams';
  String secondIntialDropDownValue = 'kilograms';

  final firstDropDownValue = [
    "grams",
    "kilograms",
    "carats",
  ];

  final secondDropDownValue = [
    "grams",
    "kilograms",
    "carats",
  ];

  final firstTextControllerValue = TextEditingController();
  final secondTextControllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width * 1.00;
    var deviceHeight = MediaQuery.of(context).size.height * 1.00;
    var devicePadding = MediaQuery.of(context).padding;
    var newDeviceHeight =
        deviceHeight - devicePadding.top - devicePadding.bottom;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var mobileSize = MediaQuery.of(context).size.shortestSide;
    final bool isMobile = mobileSize < 600;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Mass Unit Converter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: isMobile
          ? Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/angle.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Angle",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AngleCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/area.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Area",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AreaCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/mass.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Mass",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      tileColor: Colors.purple.shade100,
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MassCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/temperature.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Temperature",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TemperatureCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/length.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Length",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LengthCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/volume.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Volume",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const VolumeCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/data.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Data",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const DataCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/time.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Time",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TimeCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/binary-code.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Binary Conversion",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const BinaryCodeCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/force.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Force",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ForceCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/gas-pump.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Fuel",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const FuelCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/size.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Show Size",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ShowSizeCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/torque-wrench.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Torque",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TorqueCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                     Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "images/speedometer.png",
                        height: 40.0,
                      ),
                      title: const Text(
                        "Speed",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SpeedCategoryPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: deviceWidth,
            height: newDeviceHeight,
            child: Column(
              children: [
                SizedBox(
                  height: isPortrait
                      ? newDeviceHeight * 0.05
                      : newDeviceHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: isMobile ? deviceWidth * 0.50 : deviceWidth * 0.30,
                      child: TextFormField(
                        controller: firstTextControllerValue,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0",
                          hintStyle: TextStyle(
                            fontSize: isMobile ? 25 : 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    DropdownButton(
                      value: firstIntialDropDownValue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: firstDropDownValue.map(
                        (String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: isMobile ? 15 : 20,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (String? newValue) {
                        setState(
                          () {
                            firstIntialDropDownValue = newValue!;
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: isPortrait
                      ? isMobile
                          ? newDeviceHeight * 0.40
                          : newDeviceHeight * 0.40
                      : isMobile
                          ? newDeviceHeight * 0.15
                          : newDeviceHeight * 0.40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.arrow_upward,
                        size: 35.5,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.arrow_downward,
                        size: 35.5,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: isMobile ? deviceWidth * 0.50 : deviceWidth * 0.30,
                      child: TextFormField(
                        controller: secondTextControllerValue,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0",
                          hintStyle: TextStyle(
                            fontSize: isMobile ? 25 : 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    DropdownButton(
                      value: secondIntialDropDownValue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: secondDropDownValue.map(
                        (String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: isMobile ? 15 : 20,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (String? newValue) {
                        setState(
                          () {
                            secondIntialDropDownValue = newValue!;
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: isPortrait
                      ? newDeviceHeight * 0.05
                      : newDeviceHeight * 0.05,
                ),
                OutlinedButton(
                  onPressed: () {
                    convertData();
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: BorderSide(
                      width: 1.5,
                      color: Colors.black.withOpacity(
                        0.5,
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                  ),
                  child: const Text(
                    "Convert",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void convertData() {
    if (firstTextControllerValue.text.isEmpty) {
      alertBoxWidget(
        context,
        "Alert",
        "Please provide a value",
      );
    } else if (firstTextControllerValue.text == "0.0" ||
        firstTextControllerValue.text == "0") {
      alertBoxWidget(
        context,
        "Alert",
        "Zero not allowed",
      );
    } else if (firstIntialDropDownValue == secondIntialDropDownValue) {
      alertBoxWidget(
        context,
        "Alert",
        "You choose same option",
      );
    } else {
      setState(
        () {
          secondTextControllerValue.text = massUnitConverte(
            firstIntialDropDownValue,
            secondIntialDropDownValue,
            firstTextControllerValue,
            secondTextControllerValue,
          );
        },
      );
    }
  }
}
