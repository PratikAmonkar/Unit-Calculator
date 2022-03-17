import 'package:units_converter/units_converter.dart';

temperatureUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "celsius" &&
      secondIntialDropDownValue == "fahrenheit") {
    var temperature =
        Temperature(significantFigures: 5, removeTrailingZeros: true)
          ..convert(
            TEMPERATURE.celsius,
            double.parse(firstTextControllerValue.text),
          );
    var unit = temperature.fahrenheit;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "celsius" &&
      secondIntialDropDownValue == "kelvin") {
    var temperature =
        Temperature(significantFigures: 5, removeTrailingZeros: true)
          ..convert(
            TEMPERATURE.celsius,
            double.parse(firstTextControllerValue.text),
          );
    var unit = temperature.kelvin;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "fahrenheit" &&
      secondIntialDropDownValue == "celsius") {
    var temperature =
        Temperature(significantFigures: 5, removeTrailingZeros: true)
          ..convert(
            TEMPERATURE.fahrenheit,
            double.parse(firstTextControllerValue.text),
          );
    var unit = temperature.celsius;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "fahrenheit" &&
      secondIntialDropDownValue == "kelvin") {
    var temperature =
        Temperature(significantFigures: 5, removeTrailingZeros: true)
          ..convert(
            TEMPERATURE.fahrenheit,
            double.parse(firstTextControllerValue.text),
          );
    var unit = temperature.kelvin;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kelvin" &&
      secondIntialDropDownValue == "celsius") {
    var temperature =
        Temperature(significantFigures: 5, removeTrailingZeros: true)
          ..convert(
            TEMPERATURE.kelvin,
            double.parse(firstTextControllerValue.text),
          );
    var unit = temperature.celsius;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kelvin" &&
      secondIntialDropDownValue == "fahrenheit") {
    var temperature =
        Temperature(significantFigures: 5, removeTrailingZeros: true)
          ..convert(
            TEMPERATURE.kelvin,
            double.parse(firstTextControllerValue.text),
          );
    var unit = temperature.fahrenheit;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
