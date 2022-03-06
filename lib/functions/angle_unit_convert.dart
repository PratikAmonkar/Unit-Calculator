angleUnitConverte(firstIntialDropDownValue, secondIntialDropDownValue,
    firstTextControllerValue, secondTextControllerValue) {
  const double pi = 3.141592653589793238;

  if (firstIntialDropDownValue == "degree" &&
      secondIntialDropDownValue == "radians") {
    return (double.parse(firstTextControllerValue.text) * pi / 180)
        .toStringAsFixed(3);
  } else {
    return (double.parse(firstTextControllerValue.text) * 180 / pi)
        .toStringAsFixed(2);
  }
}
