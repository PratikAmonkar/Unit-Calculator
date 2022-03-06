import 'package:flutter/material.dart';

Future alertBoxWidget(
    BuildContext context, String errorBehaviour, String errorMesssage) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(errorBehaviour),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(errorMesssage),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
