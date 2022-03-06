areaUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "acres" &&
      secondIntialDropDownValue == "hectares") {
    return (double.parse(firstTextControllerValue.text) * 0.404)
        .toStringAsFixed(3);
  } else {
    return (double.parse(firstTextControllerValue.text) * 2.4711)
        .toStringAsFixed(2);
  }
}
