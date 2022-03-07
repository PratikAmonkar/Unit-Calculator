temperatureUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "celsius" &&
      secondIntialDropDownValue == "fahrenheit") {
    return ((double.parse(firstTextControllerValue.text) * 9 / 5) + 32)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "fahrenheit" &&
      secondIntialDropDownValue == "celsius") {
    return ((double.parse(firstTextControllerValue.text) - 32) * 5 / 9)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "celsius" &&
      secondIntialDropDownValue == "kelvin") {
    return (double.parse(firstTextControllerValue.text) + 273.15)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "fahrenheit" &&
      secondIntialDropDownValue == "kelvin") {
    return ((double.parse(firstTextControllerValue.text) - 32) * 5 / 9 + 273.15)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kelvin" &&
      secondIntialDropDownValue == "celsius") {
    return (double.parse(firstTextControllerValue.text) - 273.15)
        .toStringAsFixed(3);
  } else {
    return ((double.parse(firstTextControllerValue.text) - 273.15) * 9 / 5 + 32)
        .toStringAsFixed(3);
  }
}
