import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // If the Material or Cupertino package does not have the adaptation,
    // we can create our own adapted widget based on the user's platform.
    if (Platform.isAndroid) {
      return Slider(
        onChanged: (valor) {},
        value: 10,
        min: 0,
        max: 20,
      );
    } else {
      return CupertinoSlider(
        onChanged: (valor) {},
        value: 10,
        min: 0,
        max: 20,
      );
    }
  }
}
