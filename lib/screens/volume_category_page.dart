import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/functions/volume_unit_converter.dart';
import 'package:unit_converter/widgets/alertbox_widget.dart';

class VolumeCategoryPage extends StatefulWidget {
  const VolumeCategoryPage({Key? key}) : super(key: key);

  @override
  State<VolumeCategoryPage> createState() => _AngleCategoryPageState();
}

class _AngleCategoryPageState extends State<VolumeCategoryPage> {
  String firstIntialDropDownValue = 'liters';
  String secondIntialDropDownValue = 'milliliters';

  final firstDropDownValue = [
    "liters",
    "milliliters",
  ];

  final secondDropDownValue = [
    "liters",
    "milliliters",
  ];

  final firstTextControllerValue = TextEditingController();
  final secondTextControllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                bottom: 30,
              ),
              child: Text(
                "Volume Unit Converter",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200.0,
                    child: TextFormField(
                      controller: firstTextControllerValue,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "0.0",
                        hintStyle: TextStyle(
                          fontSize: 30,
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
                          child: Text(items),
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
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.arrow_upward,
                    size: 35.5,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 35.5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200.0,
                    child: TextFormField(
                      enabled: false,
                      controller: secondTextControllerValue,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                      //initialValue: "0.0",
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "0.0",
                        hintStyle: TextStyle(
                          fontSize: 30,
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
                          child: Text(items),
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
            ),
            const SizedBox(
              height: 50.0,
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
          secondTextControllerValue.text = volumeUnitConverte(
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
