volumeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "liters" &&
      secondIntialDropDownValue == "milliliters") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 1000).toStringAsFixed(3);
    return finalOutput + " " + "mL";
  }
  if (firstIntialDropDownValue == "milliliters" &&
      secondIntialDropDownValue == "liters") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 1000).toStringAsFixed(2);
    return finalOutput + " " + "L";
  }
}
