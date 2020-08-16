import 'package:flutter/material.dart';

ThemeData get darkTheme {
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Roboto',
    primaryColor: Color(0xFFBB6BD9),
    buttonColor: Color(0xFFBB6BD9),
    accentColor: Colors.white.withOpacity(0.8),
    backgroundColor: Color(0xFF1d243f),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 36,
        color: Colors.white.withOpacity(.8),
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(  
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
      button: TextStyle(  
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,        
      ),
    ),
  );
}