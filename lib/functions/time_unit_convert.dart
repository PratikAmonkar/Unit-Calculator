timeUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "minute") {
    var ans1 = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[0];

    var ans2 = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[1];
    String demo = ans1 + " " + "min" + " " + ans2 + " " + "sec";
    return demo;
  } else if (firstIntialDropDownValue == "second" &&
      secondIntialDropDownValue == "hour") {
    var ans1 = (double.parse(firstTextControllerValue.text) / 3600)
        .toStringAsFixed(2)
        .split('.')[0];

    var ans2 = (double.parse(firstTextControllerValue.text) / 3600)
        .toStringAsFixed(2)
        .split('.')[1];
    String demo = ans1 + " " + "hr" + " " + ans2 + " " + "sec";
    return demo;
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "second") {
    return (int.parse(firstTextControllerValue.text) * 60).toString();
  } else if (firstIntialDropDownValue == "minute" &&
      secondIntialDropDownValue == "hour") {
    var ans1 = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[0];

    var ans2 = (double.parse(firstTextControllerValue.text) / 60)
        .toStringAsFixed(2)
        .split('.')[1];
    String demo = ans1 + " " + "hr" + " " + ans2 + " " + "min";
    return demo;
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "second") {
    return (int.parse(firstTextControllerValue.text) * 3600).toString();
  } else if (firstIntialDropDownValue == "hour" &&
      secondIntialDropDownValue == "minute") {
    return (int.parse(firstTextControllerValue.text) * 60).toString();
  }
}
