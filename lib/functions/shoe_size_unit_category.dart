import 'package:units_converter/units_converter.dart';

shoeSizeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "centimeter" &&
      secondIntialDropDownValue == "inches") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "centimeter" &&
      secondIntialDropDownValue == "uk indiachild") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaChild;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "centimeter" &&
      secondIntialDropDownValue == "uk indiaman") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaMan;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "centimeter" &&
      secondIntialDropDownValue == "uk indiawomen") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.centimeters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaWoman;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "centimeter") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "uk indiachild") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaChild;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "uk indiaman") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaMan;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "uk indiawomen") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.inches,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaWoman;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiachild" &&
      secondIntialDropDownValue == "inches") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaChild,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiachild" &&
      secondIntialDropDownValue == "centimeter") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaChild,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiachild" &&
      secondIntialDropDownValue == "uk indiaman") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaChild,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaMan;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiachild" &&
      secondIntialDropDownValue == "uk indiawomen") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaChild,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaWoman;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiaman" &&
      secondIntialDropDownValue == "centimeter") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaMan,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiaman" &&
      secondIntialDropDownValue == "inches") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaMan,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiaman" &&
      secondIntialDropDownValue == "ukindiachild") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaMan,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaChild;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiaman" &&
      secondIntialDropDownValue == "uk indiawomen") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaMan,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaWoman;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiawomen" &&
      secondIntialDropDownValue == "centimeter") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaWoman,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.centimeters;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiawomen" &&
      secondIntialDropDownValue == "inches") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaWoman,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.inches;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiawomen" &&
      secondIntialDropDownValue == "uk indiaman") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaWoman,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaMan;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "uk indiawomen" &&
      secondIntialDropDownValue == "uk indiachild") {
    var shoeSize = ShoeSize(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        SHOE_SIZE.ukIndiaWoman,
        double.parse(firstTextControllerValue.text),
      );
    var unit = shoeSize.ukIndiaChild;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
