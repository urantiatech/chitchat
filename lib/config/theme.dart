import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xFFE9446A),
  primaryColorBrightness: Brightness.dark,
  accentColor: Color(0xFF0272DD),
  accentColorBrightness: Brightness.dark,
  canvasColor: Color(0xFFFFFFFF),
  scaffoldBackgroundColor: Color(0xFFFFFFFF),
  // dividerColor: Color(0xFF777777),
  dividerTheme: DividerThemeData(
    thickness: 0.5,
    color: Color(0xFFD1D9DF),
  ),
  errorColor: Color(0xFFFFAB1C),
  hintColor: Color(0xFFD5DFEA),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: Color(0xFFEF6384),
  primaryColorDark: Color(0xFFE9446A),
  primaryColorBrightness: Brightness.light,
  accentColor: Color(0xFF8CC9FF),
  accentColorBrightness: Brightness.light,
  canvasColor: Color(0xFF121212),
  scaffoldBackgroundColor: Color(0xFF121212),
  // dividerColor: Color(0xFF777777),
  dividerTheme: DividerThemeData(
    thickness: 0.5,
    color: Color(0xFF777777),
  ),
  errorColor: Color(0xFFFFF69A),
  hintColor: Color(0xFF6C6C6C),
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
  ),
);
