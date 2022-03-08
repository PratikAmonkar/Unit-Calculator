angleUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  const double pi = 3.141592653589793238;

  if (firstIntialDropDownValue == "degree" &&
      secondIntialDropDownValue == "radians") {
    var finalAns = (double.parse(firstTextControllerValue.text) * pi / 180)
        .toStringAsFixed(3);
    return finalAns + " " + "rad";
  } else {
    var finalAns = (double.parse(firstTextControllerValue.text) * 180 / pi)
        .toStringAsFixed(2);
    return finalAns + " " + "deg";
  }
}
