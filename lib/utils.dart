import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Utils {
  static void showSnackBar(BuildContext context, String text) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    scaffoldMessenger
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(text)));
  }
}
