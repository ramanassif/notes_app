import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

const Color white = Colors.white;
const primaryClr = kPrimaryColor;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes with ChangeNotifier {
  static final lightTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: primaryClr,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline4: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        headline5: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        headline6: TextStyle(color: Colors.black, fontSize: 24),
        subtitle1: TextStyle(color: Colors.black)),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: darkGreyClr),
      labelStyle: TextStyle(color: darkGreyClr),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: kPrimaryColor),
      ),
    ),
  );
  static final darkTheme = ThemeData(
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(color: Colors.black),
    primaryColor: darkGreyClr,
    backgroundColor: darkHeaderClr,
    brightness: Brightness.dark,
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(color: Colors.white),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: kPrimaryColor),
      ),
    ),
    textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline4: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        headline5: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        headline6: TextStyle(color: Colors.white, fontSize: 24),
        subtitle1: TextStyle(color: Colors.white)),
  );
}
