import 'package:flutter/material.dart';

ThemeData get lightTheme {
  return ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Roboto',
    primaryColor: Colors.purple,
    accentColor: Color(0xFF1d243f).withOpacity(0.7),
    buttonColor: Colors.purple,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 36,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(  
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      button: TextStyle(  
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,        
      ),
    ),
  );
}
