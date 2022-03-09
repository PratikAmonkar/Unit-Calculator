massUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "grams" &&
      secondIntialDropDownValue == "kilograms") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 1000).toStringAsFixed(3);
    return finalOutput + " " + "kg";
  } else if (firstIntialDropDownValue == "grams" &&
      secondIntialDropDownValue == "carats") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 5).toStringAsFixed(2);
    return finalOutput + " " + "ct";
  } else if (firstIntialDropDownValue == "kilograms" &&
      secondIntialDropDownValue == "grams") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 1000).toStringAsFixed(2);
    return finalOutput + " " + "g";
  } else if (firstIntialDropDownValue == "kilograms" &&
      secondIntialDropDownValue == "carats") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 5000).toStringAsFixed(2);
    return finalOutput + " " + "ct";
  } else if (firstIntialDropDownValue == "carats" &&
      secondIntialDropDownValue == "grams") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 5).toStringAsFixed(2);
    return finalOutput + " " + "g";
  } else if (firstIntialDropDownValue == "carats" &&
      secondIntialDropDownValue == "kilograms") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 0.0002)
        .toStringAsFixed(6);
    return finalOutput + " " + "kg";
  }
}
