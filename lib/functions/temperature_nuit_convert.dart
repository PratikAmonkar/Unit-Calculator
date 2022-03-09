temperatureUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "celsius" &&
      secondIntialDropDownValue == "fahrenheit") {
    var finalOutput =
        ((double.parse(firstTextControllerValue.text) * 9 / 5) + 32)
            .toStringAsFixed(3);
    return finalOutput + " " + "℉";
  } else if (firstIntialDropDownValue == "celsius" &&
      secondIntialDropDownValue == "kelvin") {
    var finalOutput = (double.parse(firstTextControllerValue.text) + 273.15)
        .toStringAsFixed(3);
    return finalOutput + " " + "°K";
  } else if (firstIntialDropDownValue == "fahrenheit" &&
      secondIntialDropDownValue == "celsius") {
    var finalOutput =
        ((double.parse(firstTextControllerValue.text) - 32) * 5 / 9)
            .toStringAsFixed(3);
    return finalOutput + " " + "℃";
  } else if (firstIntialDropDownValue == "fahrenheit" &&
      secondIntialDropDownValue == "kelvin") {
    var finalOutput =
        ((double.parse(firstTextControllerValue.text) - 32) * 5 / 9 + 273.15)
            .toStringAsFixed(3);
    return finalOutput + " " + "°K";
  } else if (firstIntialDropDownValue == "kelvin" &&
      secondIntialDropDownValue == "celsius") {
    var finalOutput = (double.parse(firstTextControllerValue.text) - 273.15)
        .toStringAsFixed(3);
    return finalOutput + " " + "℃";
  } else if (firstIntialDropDownValue == "kelvin" &&
      secondIntialDropDownValue == "fahrenheit") {
    var finalOutput =
        ((double.parse(firstTextControllerValue.text) - 273.15) * 9 / 5 + 32)
            .toStringAsFixed(3);
    return finalOutput + " " + "℉";
  }
}
