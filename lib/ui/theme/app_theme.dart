import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData.from(colorScheme: _colorScheme).copyWith(
    appBarTheme: _appBarTheme,
  );

  static const _colorScheme = ColorScheme.light(
    primary: Colors.white,
    onPrimary: Colors.black,
  );
  static const _appBarTheme = AppBarTheme(elevation: 0);
}
