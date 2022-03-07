timeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "minute") {
    return (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "hour") {
    return (double.parse(firstTextControllerValue.text) / 3600)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "second") {
    return (double.parse(firstTextControllerValue.text) * 60)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "hour") {
    return (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "second") {
    return (double.parse(firstTextControllerValue.text) * 3600)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "minute") {
    return (double.parse(firstTextControllerValue.text) * 60)
        .toStringAsFixed(3);
  }
}
