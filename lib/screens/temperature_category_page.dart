import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/functions/temperature_nuit_convert.dart';
import 'package:unit_converter/widgets/alertbox_widget.dart';

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
                "Temperature Unit Converter",
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
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
            ),
            const SizedBox(
              height: 50.0,
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
                      controller: secondTextControllerValue,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.purple,
                      ),
                      //initialValue: "0.0",
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
            ),
            const SizedBox(
              height: 100.0,
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
