timeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "minute") {
    var finalOutputOne = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[0];

    var finalOutputTwo = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[1];
    String demo =
        finalOutputOne + " " + "min" + " " + finalOutputTwo + " " + "sec";
    return demo;
  } else if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "hour") {
    var finalOutputOne = (double.parse(firstTextControllerValue.text) / 3600)
        .toStringAsFixed(2)
        .split('.')[0];

    var finalOutputTwo = (double.parse(firstTextControllerValue.text) / 3600)
        .toStringAsFixed(2)
        .split('.')[1];
    String demo =
        finalOutputOne + " " + "hr" + " " + finalOutputTwo + " " + "sec";
    return demo;
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "second") {
    return (int.parse(firstTextControllerValue.text) * 60).toString();
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "hour") {
    var finalOutputOne = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[0];

    var finalOutputTwo = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[1];
    String demo =
        finalOutputOne + " " + "hr" + " " + finalOutputTwo + " " + "min";
    return demo;
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "second") {
    return (int.parse(firstTextControllerValue.text) * 3600).toString();
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "minute") {
    return (int.parse(firstTextControllerValue.text) * 60).toString();
  }
}
