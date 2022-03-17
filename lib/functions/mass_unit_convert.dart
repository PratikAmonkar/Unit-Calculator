import 'package:units_converter/units_converter.dart';

massUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "grams" &&
      secondIntialDropDownValue == "kilograms") {
    var mass = Mass(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        MASS.grams,
        double.parse(firstTextControllerValue.text),
      );
    var unit = mass.kilograms;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "grams" &&
      secondIntialDropDownValue == "carats") {
    var mass = Mass(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        MASS.grams,
        double.parse(firstTextControllerValue.text),
      );
    var unit = mass.carats;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilograms" &&
      secondIntialDropDownValue == "grams") {
    var mass = Mass(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        MASS.kilograms,
        double.parse(firstTextControllerValue.text),
      );
    var unit = mass.grams;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kilograms" &&
      secondIntialDropDownValue == "carats") {
    var mass = Mass(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        MASS.kilograms,
        double.parse(firstTextControllerValue.text),
      );
    var unit = mass.carats;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "carats" &&
      secondIntialDropDownValue == "grams") {
    var mass = Mass(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        MASS.carats,
        double.parse(firstTextControllerValue.text),
      );
    var unit = mass.grams;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "carats" &&
      secondIntialDropDownValue == "kilograms") {
    var mass = Mass(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        MASS.carats,
        double.parse(firstTextControllerValue.text),
      );
    var unit = mass.kilograms;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
