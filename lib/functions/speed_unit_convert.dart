import 'package:converter/converter.dart';

speedUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "meter/sec" &&
      secondIntialDropDownValue == "kilometer/hr") {
    var speed = Speed(
      double.parse(firstTextControllerValue.text),
      'm/s',
    );
    var unit = speed.valueIn("km/h");
    return "$unit km/h";
  } else if (firstIntialDropDownValue == "kilometer/hr" &&
      secondIntialDropDownValue == "meter/sec") {
    var speed = Speed(
      double.parse(firstTextControllerValue.text),
      'km/h',
    );
    var unit = speed.valueIn("m/s");
    return "$unit m/s";
  }
}
