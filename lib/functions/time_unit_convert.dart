import 'package:units_converter/units_converter.dart';

timeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "minute") {
    var time = Time(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TIME.seconds,
        double.parse(firstTextControllerValue.text),
      );
    var unit = time.minutes;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "hour") {
    var time = Time(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TIME.seconds,
        double.parse(firstTextControllerValue.text),
      );
    var unit = time.hours;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "second") {
    var time = Time(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TIME.minutes,
        double.parse(firstTextControllerValue.text),
      );
    var unit = time.seconds;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "hour") {
    var time = Time(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TIME.minutes,
        double.parse(firstTextControllerValue.text),
      );
    var unit = time.hours;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "second") {
    var time = Time(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TIME.hours,
        double.parse(firstTextControllerValue.text),
      );
    var unit = time.seconds;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "minute") {
    var time = Time(significantFigures: 5, removeTrailingZeros: true)
      ..convert(
        TIME.hours,
        double.parse(firstTextControllerValue.text),
      );
    var unit = time.minutes;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
