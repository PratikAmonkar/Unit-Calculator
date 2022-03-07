volumeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "liters" &&
      secondIntialDropDownValue == "milliliters") {
    return (double.parse(firstTextControllerValue.text) * 1000)
        .toStringAsFixed(3);
  } else {
    return (double.parse(firstTextControllerValue.text) / 1000)
        .toStringAsFixed(2);
  }
}
