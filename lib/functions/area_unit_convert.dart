import 'package:units_converter/units_converter.dart';

areaUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "acres" &&
      secondIntialDropDownValue == "hectares") {
    var area = Area(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        AREA.acres,
        double.parse(firstTextControllerValue.text),
      );
    var unit = area.hectares;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "hectares" &&
      secondIntialDropDownValue == "acres") {
    var area = Area(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        AREA.hectares,
        double.parse(firstTextControllerValue.text),
      );
    var unit = area.acres;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
