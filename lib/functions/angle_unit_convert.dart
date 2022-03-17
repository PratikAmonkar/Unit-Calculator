import 'package:units_converter/units_converter.dart';

angleUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "degree" &&
      secondIntialDropDownValue == "radians") {
    var angle = Angle(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        ANGLE.degree,
        double.parse(firstTextControllerValue.text),
      );
    var unit = angle.radians;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "radians" &&
      secondIntialDropDownValue == "degree") {
    var angle = Angle(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        ANGLE.radians,
        double.parse(firstTextControllerValue.text),
      );
    var unit = angle.degree;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
