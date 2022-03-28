import 'package:units_converter/units_converter.dart';

fuelUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "km perliter" &&
      secondIntialDropDownValue == "litersper100km") {
    var fuel = FuelConsumption(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FUEL_CONSUMPTION.kilometersPerLiter,
        double.parse(firstTextControllerValue.text),
      );
    var unit = fuel.litersPer100km;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "litersper100km" &&
      secondIntialDropDownValue == "km perliter") {
    var fuel = FuelConsumption(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FUEL_CONSUMPTION.litersPer100km,
        double.parse(firstTextControllerValue.text),
      );
    var unit = fuel.kilometersPerLiter;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
