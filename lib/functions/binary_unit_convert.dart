import 'package:units_converter/units_converter.dart';

binaryUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "binary" &&
      secondIntialDropDownValue == "decimal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.binary,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.decimal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "binary" &&
      secondIntialDropDownValue == "hexadecimal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.binary,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.hexadecimal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "binary" &&
      secondIntialDropDownValue == "octal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.binary,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.octal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "decimal" &&
      secondIntialDropDownValue == "binary") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.decimal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.binary;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "decimal" &&
      secondIntialDropDownValue == "hexadecimal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.decimal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.hexadecimal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "decimal" &&
      secondIntialDropDownValue == "octal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.decimal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.octal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "hexadecimal" &&
      secondIntialDropDownValue == "binary") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.hexadecimal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.binary;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "hexadecimal" &&
      secondIntialDropDownValue == "decimal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.hexadecimal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.decimal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "hexadecimal" &&
      secondIntialDropDownValue == "octal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.hexadecimal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.octal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "octal" &&
      secondIntialDropDownValue == "binary") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.octal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.binary;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "octal" &&
      secondIntialDropDownValue == "decimal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.octal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.decimal;
    return "${unit.stringValue} ${unit.symbol}";
  } else if (firstIntialDropDownValue == "octal" &&
      secondIntialDropDownValue == "hexadecimal") {
    var numeralSystem = NumeralSystems()
      ..convert(
        NUMERAL_SYSTEMS.octal,
        firstTextControllerValue.text,
      );
    var unit = numeralSystem.hexadecimal;
    return "${unit.stringValue} ${unit.symbol}";
  }
}
