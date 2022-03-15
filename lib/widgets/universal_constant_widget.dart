import 'package:flutter/material.dart';
import 'package:unit_converter/model/universal_constants_model.dart';

universalConstantsWidget(BuildContext context) {
  var deviceWidth = MediaQuery.of(context).size.width;
  final List<UniversalConstants> _items = [
    UniversalConstants(
      "1",
      "demo1 ",
      "d",
      "dd",
      "123",
    ),
    UniversalConstants(
      "2",
      "demo2 ",
      "dfdsf",
      "ddfsdf",
      "123",
    ),
  ];
  return Column(
    children: List.generate(
      _items.length,
      (index) {
        return Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                 _items[index].constantNumber,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: deviceWidth / 1.7,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.red,
                  ),
                ),
                child: Text(
                  "${_items[index].constantName}(${_items[0].constantSymbol})",
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: deviceWidth / 3.6,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.green,
                  ),
                ),
                child: Text(
                  "${_items[index].constantvalue}(${_items[0].constantUnit})",
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}
