dataUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "kilobyte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 1000).toStringAsFixed(3);
    return finalOutput + " " + "KB";
  } else if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "megabyte") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 0.000001)
        .toStringAsFixed(6);
    return finalOutput + " " + "MB";
  } else if (firstIntialDropDownValue == "byte" &&
      secondIntialDropDownValue == "gigabyte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 0.000000001)
            .toStringAsFixed(9);

    return finalOutput + " " + "GB";
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "byte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 1000).toStringAsFixed(3);
    return finalOutput + " " + "B";
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "megabyte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 1000).toStringAsFixed(3);
    return finalOutput + " " + "MB";
  } else if (firstIntialDropDownValue == "kilobyte" &&
      secondIntialDropDownValue == "gigabyte") {
    var finalOutput = (double.parse(firstTextControllerValue.text) / 1000000)
        .toStringAsFixed(7);
    return finalOutput + " " + "GB";
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "byte") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 1000000)
        .toStringAsFixed(3);
    return finalOutput + " " + "B";
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "kilobyte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 1000).toStringAsFixed(3);
    return finalOutput + " " + "KB";
  } else if (firstIntialDropDownValue == "megabyte" &&
      secondIntialDropDownValue == "gigabyte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) / 1000).toStringAsFixed(3);
    return finalOutput + " " + "GB";
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "byte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text)  * 1000000000)
            .toStringAsFixed(3);
    return finalOutput + " " + "B";
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "kilobyte") {
    var finalOutput = (double.parse(firstTextControllerValue.text) * 1000000)
        .toStringAsFixed(3);
    return finalOutput + " " + "KB";
  } else if (firstIntialDropDownValue == "gigabyte" &&
      secondIntialDropDownValue == "megabyte") {
    var finalOutput =
        (double.parse(firstTextControllerValue.text) * 1000).toStringAsFixed(3);
    return finalOutput + " " + "MB";
  }
}
