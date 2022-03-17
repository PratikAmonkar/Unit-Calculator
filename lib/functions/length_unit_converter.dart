import 'package:units_converter/units_converter.dart';

lengthUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "meters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.meters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "feet") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.feet;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "kilometers") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.kilometers;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "inches") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "centimeters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.meters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "feet") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.meters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.feet;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "kilometers") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.meters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.kilometers;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "inches") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.meters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "centimeters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.feet,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "meters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.feet,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.meters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "kilometers") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.feet,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.kilometers;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "inches") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.feet,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "centimeters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.kilometers,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "meters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.kilometers,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.meters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "feet") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.kilometers,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.feet;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "inches") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.kilometers,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "centimeters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "meters") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.meters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "feet") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.feet;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "kilometers") {
    var length = Length(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        LENGTH.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = length.kilometers;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
