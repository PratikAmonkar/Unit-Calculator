massUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "grams" &&
      secondIntialDropDownValue == "kilograms") {
    return (double.parse(firstTextControllerValue.text) / 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilograms" &&
      secondIntialDropDownValue == "grams") {
    return (double.parse(firstTextControllerValue.text) * 1000)
        .toStringAsFixed(2);
  } else if (firstIntialDropDownValue == "grams" &&
      secondIntialDropDownValue == "carats") {
    return (double.parse(firstTextControllerValue.text) * 5).toStringAsFixed(2);
  } else if (firstIntialDropDownValue == "carats" &&
      secondIntialDropDownValue == "grams") {
    return (double.parse(firstTextControllerValue.text) / 5).toStringAsFixed(2);
  } else if (firstIntialDropDownValue == "kilograms" &&
      secondIntialDropDownValue == "carats") {
    return (double.parse(firstTextControllerValue.text) * 5000)
        .toStringAsFixed(2);
  } else {
    return (double.parse(firstTextControllerValue.text) / 5000)
        .toStringAsFixed(6);
  }
}
