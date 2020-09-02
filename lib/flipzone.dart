import 'package:flutter/material.dart';

class Flipzone {
  static Color white = Color(0xffffffff);

  static Color grey = Color(0xffe3e3e4);

  static Color black = Color(0xff242c37);

  static Color accentPink = Color(0xffef3d55);

  static const double kDefaultPadding = 20.0;

  static final kTextInputFieldDecoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
    filled: true,
    fillColor: white,
    hintText: 'Search anything',
    hintStyle: TextStyle(color: Colors.black54),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(28.0)),
      borderSide: BorderSide.none,
    ),
    enabled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: null,
    focusedBorder: null,
  );

  static const TextStyle kTitleTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.2,
  );
}
