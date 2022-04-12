import 'package:flutter/material.dart';

class AppInputDecoration {
  InputDecoration boxDecoration(String hintLabel) {
    return InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        fillColor: Colors.transparent,
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        border: InputBorder.none,
        focusColor: Colors.white,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.white)),
        filled: true,
        contentPadding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
        labelText: hintLabel);
  }
}
