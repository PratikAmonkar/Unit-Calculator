import 'package:units_converter/units_converter.dart';

torqueUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "dyne meter" &&
      secondIntialDropDownValue == "kg force meter") {
    var torque = Torque(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TORQUE.dyneMeter,
        double.parse(firstTextControllerValue.text),
      );
    var unit = torque.kilogramForceMeter;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "dyne meter" &&
      secondIntialDropDownValue == "newton meter") {
    var torque = Torque(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TORQUE.dyneMeter,
        double.parse(firstTextControllerValue.text),
      );
    var unit = torque.newtonMeter;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kg force meter" &&
      secondIntialDropDownValue == "dyne meter") {
    var torque = Torque(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TORQUE.kilogramForceMeter,
        double.parse(firstTextControllerValue.text),
      );
    var unit = torque.dyneMeter;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kg force meter" &&
      secondIntialDropDownValue == "newton meter") {
    var torque = Torque(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TORQUE.kilogramForceMeter,
        double.parse(firstTextControllerValue.text),
      );
    var unit = torque.newtonMeter;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "newton meter" &&
      secondIntialDropDownValue == "dyne meter") {
    var torque = Torque(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TORQUE.newtonMeter,
        double.parse(firstTextControllerValue.text),
      );
    var unit = torque.dyneMeter;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "newton meter" &&
      secondIntialDropDownValue == "kg force meter") {
    var torque = Torque(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TORQUE.newtonMeter,
        double.parse(firstTextControllerValue.text),
      );
    var unit = torque.kilogramForceMeter;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
