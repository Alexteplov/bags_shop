import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme => ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Pacifico',
            color: Colors.black87,
            fontSize: 22,
          ),
          bodyText2: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
          headline5: TextStyle(
              color: Colors.white, fontSize: 24, fontFamily: 'Pacifico'),
        ),
        fontFamily: 'Roboto',
      );
}
