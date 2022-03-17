import 'package:units_converter/units_converter.dart';

volumeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "liters" &&
      secondIntialDropDownValue == "milliliters") {
    var volume = Volume(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        VOLUME.liters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = volume.milliliters;
    return "${unit.stringValue} ${unit.symbol}";
  }
  if (firstIntialDropDownValue == "milliliters" &&
      secondIntialDropDownValue == "liters") {
    var volume = Volume(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        VOLUME.milliliters,
        double.parse(firstTextControllerValue.text),
      );
    var unit = volume.liters;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
