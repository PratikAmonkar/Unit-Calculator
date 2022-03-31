import 'package:converter/converter.dart';

electricCurrentUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "ampere " &&
      secondIntialDropDownValue == "milliampere") {
    var electricCurrent = ElectricCurrent(
      double.parse(firstTextControllerValue.text),
      'A',
    );
    var unit = electricCurrent.valueIn("mA");
    return "$unit mA";
  } else if (firstIntialDropDownValue == "ampere " &&
      secondIntialDropDownValue == "kiloampere") {
    var electricCurrent = ElectricCurrent(
      double.parse(firstTextControllerValue.text),
      'A',
    );
    var unit = electricCurrent.valueIn("kA");
    return "$unit kA";
  } else if (firstIntialDropDownValue == "milliampere " &&
      secondIntialDropDownValue == "ampere") {
    var electricCurrent = ElectricCurrent(
      double.parse(firstTextControllerValue.text),
      'mA',
    );
    var unit = electricCurrent.valueIn("A");
    return "$unit A";
  } else if (firstIntialDropDownValue == "milliampere" &&
      secondIntialDropDownValue == "kiloampere") {
    var electricCurrent = ElectricCurrent(
      double.parse(firstTextControllerValue.text),
      'mA',
    );
    var unit = electricCurrent.valueIn("kA");
    return "$unit kA";
  } else if (firstIntialDropDownValue == "kiloampere" &&
      secondIntialDropDownValue == "ampere ") {
    var electricCurrent = ElectricCurrent(
      double.parse(firstTextControllerValue.text),
      'kA',
    );
    var unit = electricCurrent.valueIn("A");
    return "$unit A";
  } else if (firstIntialDropDownValue == "kiloampere" &&
      secondIntialDropDownValue == "milliampere") {
    var electricCurrent = ElectricCurrent(
      double.parse(firstTextControllerValue.text),
      'kA',
    );
    var unit = electricCurrent.valueIn("mA");
    return "$unit mA";
  }
}
