import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
        color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold);
  }

  static TextStyle lightTextFieldStyle() {
    return TextStyle(
        color: Colors.black54, fontSize: 20.0, fontWeight: FontWeight.w400);
  }

  static TextStyle semiboldTextFieldStyle() {
    return TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);
  }
  static TextStyle lightreducedTextFieldStyle() {
    return TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w400);
  }
}
