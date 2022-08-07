import 'package:flutter/material.dart';

class Themes {
  static ThemeData customTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
          .copyWith(secondary: Colors.amber),
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 50, 50, 1),
            ),
            bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 50, 50, 1),
            ),
            subtitle1: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
    );
  }
}
