lengthUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "meters") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 100).toStringAsFixed(3);
    return finalOutput + " " + "m";
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "feet") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 1 / 30.48)
        .toStringAsFixed(3);
    return finalOutput + " " + "ft";
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "kilometers") {
    var finalOutput = (double.parse(firstTextControllerValue.text) / 100000)
        .toStringAsFixed(3);
    return finalOutput + " " + "km";
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "inches") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 0.393701)
        .toStringAsFixed(3);
    return finalOutput + " " + "inch";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "centimeters") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 100).toStringAsFixed(3);
    return finalOutput + " " + "cm";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "feet") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 3.281)
        .toStringAsFixed(3);
    return finalOutput + " " + "ft";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "kilometers") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 1000).toStringAsFixed(3);
    return finalOutput + " " + "km";
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "inches") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 39.37)
        .toStringAsFixed(3);
    return finalOutput + " " + "inch";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "centimeters") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 30.48)
        .toStringAsFixed(3);
    return finalOutput + " " + "cm";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "meters") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 0.3048)
        .toStringAsFixed(3);
    return finalOutput + " " + "m";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "kilometers") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 3281).toStringAsFixed(6);
    return finalOutput + " " + "km";
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "inches") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 12).toStringAsFixed(3);
    return finalOutput + " " + "inch";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "centimeters") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 100000)
        .toStringAsFixed(3);
    return finalOutput + " " + "cm";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "meters") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 1000).toStringAsFixed(3);
    return finalOutput + " " + "m";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "feet") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 3281).toStringAsFixed(3);
    return finalOutput + " " + "ft";
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "inches") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 39370)
        .toStringAsFixed(3);
    return finalOutput + " " + "inch";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "centimeters") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 2.54).toStringAsFixed(3);
    return finalOutput + " " + "cm";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "meters") {
    var finalOutput = (double.parse(firstTextControllerValue.text) / 39.37)
        .toStringAsFixed(3);
    return finalOutput + " " + "m";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "feet") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 12).toStringAsFixed(3);
    return finalOutput + " " + "ft";
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "kilometers") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 0.0000254)
        .toStringAsFixed(8);
    return finalOutput + " " + "km";
  }
}
