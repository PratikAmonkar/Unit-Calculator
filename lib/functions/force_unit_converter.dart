import 'package:units_converter/units_converter.dart';

forceUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "dyne" &&
      secondIntialDropDownValue == "kg force") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.dyne,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.kilogramForce;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "dyne" &&
      secondIntialDropDownValue == "newton") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.dyne,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.newton;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "dyne" &&
      secondIntialDropDownValue == "poundal") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.dyne,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.poundal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kg force" &&
      secondIntialDropDownValue == "dyne") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.kilogramForce,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.dyne;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kg force" &&
      secondIntialDropDownValue == "newton") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.kilogramForce,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.newton;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "kg force" &&
      secondIntialDropDownValue == "poundal") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.kilogramForce,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.poundal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "newton" &&
      secondIntialDropDownValue == "dyne") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.newton,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.dyne;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "newton" &&
      secondIntialDropDownValue == "kg force") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.newton,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.kilogramForce;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "newton" &&
      secondIntialDropDownValue == "poundal") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.newton,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.poundal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "poundal" &&
      secondIntialDropDownValue == "dyne") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.poundal,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.dyne;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "poundal" &&
      secondIntialDropDownValue == "kg force") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.poundal,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.kilogramForce;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "poundal" &&
      secondIntialDropDownValue == "newton") {
    var force = Force(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        FORCE.poundal,
        double.parse(firstTextControllerValue.text),
      );
    var unit = force.newton;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
