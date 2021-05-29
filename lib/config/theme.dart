import 'package:chitchat/main.dart';
import 'package:flutter/material.dart';

bool isThemeDark = currentThemeMode == ThemeMode.dark;
double splashRadius = 24;

const Color whiteColor = Color(0xFFFFFFFF);
const Color lightThemePrimaryColor = Color(0xFFE9446A);
const Color lightThemeAccentColor = Color(0xFF0272DD);
const Color lightThemeDividerColor = Color(0xFFE5EAEE);
const Color lightThemeInputBorderColor = Color(0xFFD1D9DF);
const Color lightThemeErrorColor = Color(0xFFFFAB1C);
const Color lightThemeHintColor = Color(0xFFA8B1BA);

const Color darkThemePrimaryColor = Color(0xFFEF6384);
const Color darkThemeAccentColor = Color(0xFF8CC9FF);
const Color darkThemeBackgroundColor = Color(0xFF121212);
const Color darkThemeDividerColor = Color(0xFF474747);
const Color darkThemeInputBorderColor = Color(0xFF777777);
const Color darkThemeErrorColor = Color(0xFFFFF69A);
const Color darkThemeHintColor = Color(0xFF6C6C6C);

Color normalTextColor =
    isThemeDark == true ? Color(0xFFE0E0E0) : Color(0xFF1F2021);
Color subtleTextColor =
    isThemeDark == true ? Color(0xFFA0A0A0) : Color(0xFFB4B4B4);
Color moreSubtleTextColor =
    isThemeDark == true ? Color(0xFF6C6C6C) : Color(0xFFD5DFEA);
Color chatFieldBg = isThemeDark == true ? Color(0xFF292929) : Color(0xFFF9F9F9);

ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: lightThemePrimaryColor,
  primaryColorDark: lightThemePrimaryColor,
  primaryColorBrightness: Brightness.dark,
  accentColor: lightThemeAccentColor,
  accentColorBrightness: Brightness.dark,
  canvasColor: whiteColor,
  scaffoldBackgroundColor: whiteColor,
  dividerTheme: DividerThemeData(
    thickness: 0.5,
    color: lightThemeDividerColor,
  ),
  errorColor: lightThemeErrorColor,
  hintColor: lightThemeHintColor,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(
        lightThemeAccentColor.withOpacity(0.12),
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(horizontal: 0),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: whiteColor,
    iconTheme: IconThemeData(
      color: lightThemePrimaryColor,
    ),
    actionsIconTheme: IconThemeData(
      color: lightThemePrimaryColor,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: TextStyle(
      height: 0,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: normalTextColor,
    ),
    hintStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: moreSubtleTextColor,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: lightThemeHintColor,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: lightThemeInputBorderColor,
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: darkThemePrimaryColor,
  primaryColorDark: lightThemePrimaryColor,
  primaryColorBrightness: Brightness.light,
  accentColor: darkThemeAccentColor,
  accentColorBrightness: Brightness.light,
  canvasColor: darkThemeBackgroundColor,
  scaffoldBackgroundColor: darkThemeBackgroundColor,
  // dividerColor: darkThemeDividerColor,
  dividerTheme: DividerThemeData(
    thickness: 0.5,
    color: darkThemeDividerColor,
  ),
  errorColor: darkThemeErrorColor,
  hintColor: darkThemeHintColor,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(
        darkThemeAccentColor.withOpacity(0.12),
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(horizontal: 0),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: darkThemeBackgroundColor,
    iconTheme: IconThemeData(
      color: darkThemePrimaryColor,
    ),
    actionsIconTheme: IconThemeData(
      color: darkThemePrimaryColor,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: TextStyle(
      height: 0,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: normalTextColor,
    ),
    hintStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: moreSubtleTextColor,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: darkThemeHintColor,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: darkThemeInputBorderColor,
      ),
    ),
  ),
);
