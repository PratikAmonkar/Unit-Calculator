import 'package:converter/converter.dart';

frequencyUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "hertz" &&
      secondIntialDropDownValue == "kilohertz") {
    var frequency = Frequency(
      double.parse(firstTextControllerValue.text),
      'Hz',
    );
    var unit = frequency.valueIn("kHz");
    return "$unit kHz";
  } else if (firstIntialDropDownValue == "hertz" &&
      secondIntialDropDownValue == "megahertz") {
    var frequency = Frequency(
      double.parse(firstTextControllerValue.text),
      'Hz',
    );
    var unit = frequency.valueIn("MHz");
    return "$unit MHz";
  } else if (firstIntialDropDownValue == "kilohertz" &&
      secondIntialDropDownValue == "hertz") {
    var frequency = Frequency(
      double.parse(firstTextControllerValue.text),
      'KHz',
    );
    var unit = frequency.valueIn("Hz");
    return "$unit Hz";
  } else if (firstIntialDropDownValue == "kilohertz" &&
      secondIntialDropDownValue == "megahertz") {
    var frequency = Frequency(
      double.parse(firstTextControllerValue.text),
      'KHz',
    );
    var unit = frequency.valueIn("MHz");
    return "$unit MHz";
  } else if (firstIntialDropDownValue == "megahertz" &&
      secondIntialDropDownValue == "hertz") {
    var frequency = Frequency(
      double.parse(firstTextControllerValue.text),
      'MHz',
    );
    var unit = frequency.valueIn("Hz");
    return "$unit Hz";
  } else if (firstIntialDropDownValue == "megahertz" &&
      secondIntialDropDownValue == "kilohertz") {
    var frequency = Frequency(
      double.parse(firstTextControllerValue.text),
      'MHz',
    );
    var unit = frequency.valueIn("KHz");
    return "$unit KHz";
  }
}
