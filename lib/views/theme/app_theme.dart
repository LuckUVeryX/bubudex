import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData.from(colorScheme: _colorScheme).copyWith(
    appBarTheme: _appBarTheme,
    textTheme: _textTheme,
    progressIndicatorTheme: _progressIndicatorTheme,
  );

  static const _colorScheme = ColorScheme.light(
    primary: Colors.white,
    onPrimary: Colors.black,
  );
  static const _appBarTheme = AppBarTheme(elevation: 0);

  static const _textTheme = TextTheme(
    // Title
    headline1: TextStyle(
      fontSize: 100,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Application Title
    headline5: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Pokemon Name
    headline6: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Filter Title
    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Description
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    // Pokemon Number
    subtitle1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Pokemon Type
    subtitle2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );
  static const _progressIndicatorTheme = ProgressIndicatorThemeData(
    color: Colors.black,
  );
}
