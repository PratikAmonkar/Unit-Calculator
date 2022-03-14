import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/functions/temperature_nuit_convert.dart';
import 'package:unit_converter/widgets/alertbox_widget.dart';

import 'angle_category_page.dart';
import 'area_category_page.dart';
import 'data_category_page.dart';
import 'length_category_page.dart';
import 'mass_category_page.dart';
import 'time_category_page.dart';
import 'volume_category_page.dart';

class TemperatureCategoryPage extends StatefulWidget {
  const TemperatureCategoryPage({Key? key}) : super(key: key);

  @override
  State<TemperatureCategoryPage> createState() => _AngleCategoryPageState();
}

class _AngleCategoryPageState extends State<TemperatureCategoryPage> {
  String firstIntialDropDownValue = 'celsius';
  String secondIntialDropDownValue = 'fahrenheit';

  final firstDropDownValue = [
    "celsius",
    "fahrenheit",
    "kelvin",
  ];

  final secondDropDownValue = [
    "celsius",
    "fahrenheit",
    "kelvin",
  ];

  final firstTextControllerValue = TextEditingController();
  final secondTextControllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var mobileSize = MediaQuery.of(context).size.shortestSide;
    final bool isMobile = mobileSize < 600;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            "Temperature Unit Converter",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        iconTheme: const IconThemeData(
          color: Colors.purple,
        ),
      ),
      drawer: isMobile
          ? Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "images/angle.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Angle",
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
                  ListTile(
                    leading: Image.asset(
                      "images/area.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Area",
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
                  ListTile(
                    leading: Image.asset(
                      "images/mass.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Mass",
                    ),
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
                  ListTile(
                    leading: Image.asset(
                      "images/temperature.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Temperature",
                    ),
                    tileColor: Colors.purple.shade100,
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
                  ListTile(
                    leading: Image.asset(
                      "images/length.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Length",
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
                  ListTile(
                    leading: Image.asset(
                      "images/volume.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Volume",
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
                  ListTile(
                    leading: Image.asset(
                      "images/data.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Data",
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
                  ListTile(
                    leading: Image.asset(
                      "images/time.png",
                      height: 30.0,
                    ),
                    title: const Text(
                      "Time",
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
                ],
              ),
            )
          : null,
      body: SafeArea(
        child: SizedBox(
          width: deviceWidth,
          height: deviceHeight,
          child: Column(
            children: [
              SizedBox(
                height: deviceHeight / 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200.0,
                    child: TextFormField(
                      controller: firstTextControllerValue,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.purple,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "0.0",
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple,
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
                            style: const TextStyle(
                              color: Colors.purple,
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
                height: isPortrait ? deviceHeight / 3 : deviceHeight / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.arrow_upward,
                      size: 35.5,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      size: 35.5,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200.0,
                    child: TextFormField(
                      controller: secondTextControllerValue,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.purple,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "0.0",
                        hintStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple,
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
                            style: const TextStyle(
                              color: Colors.purple,
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
                height: deviceHeight / 10,
              ),
              ElevatedButton(
                onPressed: () {
                  convertData();
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.only(
                    left: 50.0,
                    right: 50.0,
                  ),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
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
          secondTextControllerValue.text = temperatureUnitConverte(
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
