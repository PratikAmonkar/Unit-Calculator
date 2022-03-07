dataUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "kilobyte") {
    return (double.parse(firstTextControllerValue.text) / 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "megabyte") {
    return (double.parse(firstTextControllerValue.text) /
                1 *
                2.718281828459045 +
            6)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "gigabyte") {
    return (double.parse(firstTextControllerValue.text) /
                1 *
                2.718281828459045 +
            9)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "byte") {
    return (double.parse(firstTextControllerValue.text) * 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "megabyte") {
    return (double.parse(firstTextControllerValue.text) / 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "gigabyte") {
    return (double.parse(firstTextControllerValue.text) /
                1 *
                2.718281828459045 +
            6)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "byte") {
    return (double.parse(firstTextControllerValue.text) *
                1 *
                2.718281828459045 +
            6)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "kilobyte") {
    return (double.parse(firstTextControllerValue.text) * 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "gigabyte") {
    return (double.parse(firstTextControllerValue.text) / 1000)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "byte") {
    return (double.parse(firstTextControllerValue.text) *
                1 *
                2.718281828459045 +
            9)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "kilobyte") {
    return (double.parse(firstTextControllerValue.text) *
                1 *
                2.718281828459045 +
            6)
        .toStringAsFixed(3);
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "megabyte") {
    return (double.parse(firstTextControllerValue.text) * 1000)
        .toStringAsFixed(3);
  }
}
