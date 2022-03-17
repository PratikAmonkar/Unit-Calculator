import 'package:units_converter/units_converter.dart';

dataUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "kilobyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.byte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.kilobyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "megabyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.byte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.megabyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "gigabyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.byte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.gigabyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "byte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.kilobyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.byte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "megabyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.kilobyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.megabyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "gigabyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.kilobyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.gigabyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "byte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.megabyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.byte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "kilobyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.megabyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.kilobyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "gigabyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.megabyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.gigabyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "byte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.gigabyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.byte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "kilobyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.gigabyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.kilobyte;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "megabyte") {
    var data = DigitalData(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        DIGITAL_DATA.gigabyte,
        double.parse(firstTextControllerValue.text),
      );
    var unit = data.megabyte;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
