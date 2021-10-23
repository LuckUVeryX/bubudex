import 'package:flutter/material.dart';

import 'theme.dart';

class AppTheme {
  static final lightTheme =
      ThemeData.from(colorScheme: _lightColorScheme).copyWith(
    appBarTheme: _lightAppBarTheme,
    textTheme: _lightTextTheme,
    progressIndicatorTheme: _lightProgressIndicatorTheme,
    iconTheme: _lightIconTheme,
  );

  static final _lightColorScheme = ColorScheme.light(
    primary: Colors.black,
    secondary: Colors.grey[200]!,
  );

  static const _lightAppBarTheme = AppBarTheme(
    elevation: 0,
    color: Colors.white,
    iconTheme: _lightIconTheme,
  );

  static const _lightIconTheme = IconThemeData(color: Colors.black);

  static const _lightTextTheme = TextTheme(
    // Title
    headline1: TextStyle(
      fontSize: 100,
      fontWeight: FontWeight.bold,
      color: Colors.white,
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

  static const _lightProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: Colors.black,
  );

  static final darkTheme =
      ThemeData.from(colorScheme: _darkColorScheme).copyWith(
    appBarTheme: _darkAppBarTheme,
    textTheme: _darkTextTheme,
    progressIndicatorTheme: _darkProgressIndicatorTheme,
    iconTheme: _darkIconTheme,
  );

  static final _darkColorScheme =
      ColorScheme.dark(primary: Colors.white, secondary: Colors.grey[800]!);

  static const _darkAppBarTheme = AppBarTheme(
    elevation: 0,
    color: Colors.black,
    iconTheme: _darkIconTheme,
  );

  static const _darkIconTheme = IconThemeData(color: Colors.white);

  static const _darkTextTheme = TextTheme(
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
      color: Colors.white,
    ),
    // Pokemon Name
    headline6: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    // Filter Title
    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    // Description
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    // Pokemon Number
    subtitle1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    // Pokemon Type
    subtitle2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  );

  static const _darkProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: Colors.white,
  );
}

final ButtonStyle selectedButtonStyle = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  elevation: 2.0,
  primary: Palette.kPsychic,
);
final ButtonStyle unselectedButtonStyle = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  onPrimary: Colors.grey[600],
  elevation: 0,
  primary: Palette.kDefaultInput,
);
