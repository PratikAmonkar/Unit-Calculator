lengthUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "meters") {
    return (double.parse(firstTextControllerValue.text) / 100)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "feet") {
    return (double.parse(firstTextControllerValue.text) / 30.48)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "kilometers") {
    return (double.parse(firstTextControllerValue.text) / 100000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "centimeters" &&
      secondIntialDropDownValue == "inches") {
    return (double.parse(firstTextControllerValue.text) / 2.54)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "centimeters") {
    return (double.parse(firstTextControllerValue.text) * 100)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "feet") {
    return (double.parse(firstTextControllerValue.text) * 3.281)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "kilometers") {
    return (double.parse(firstTextControllerValue.text) / 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "meters" &&
      secondIntialDropDownValue == "inches") {
    return (double.parse(firstTextControllerValue.text) * 39.37)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "centimeters") {
    return (double.parse(firstTextControllerValue.text) * 30.48)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "meters") {
    return (double.parse(firstTextControllerValue.text) / 3.281)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "kilometers") {
    return (double.parse(firstTextControllerValue.text) / 3281)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "feet" &&
      secondIntialDropDownValue == "inches") {
    return (double.parse(firstTextControllerValue.text) * 12)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "centimeters") {
    return (double.parse(firstTextControllerValue.text) * 100000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "meters") {
    return (double.parse(firstTextControllerValue.text) * 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "feet") {
    return (double.parse(firstTextControllerValue.text) * 3281)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilometers" &&
      secondIntialDropDownValue == "inches") {
    return (double.parse(firstTextControllerValue.text) * 39370)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "centimeters") {
    return (double.parse(firstTextControllerValue.text) * 2.54)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "meters") {
    return (double.parse(firstTextControllerValue.text) / 39.37)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "inches" &&
      secondIntialDropDownValue == "feet") {
    return (double.parse(firstTextControllerValue.text) / 12)
        .toStringAsFixed(3);
  } else {
    return (double.parse(firstTextControllerValue.text) / 39370)
        .toStringAsFixed(3);
  }
}
