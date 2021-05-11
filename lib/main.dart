import 'package:chitchat/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/theme.dart';

bool isIntroShown;
SharedPreferences sharedPreferences;
ThemeMode currentThemeMode = ThemeMode.dark;
// ThemeMode currentThemeMode = ThemeMode.light;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  isIntroShown = sharedPreferences.getBool("isIntroShown");
  await sharedPreferences.setBool("isIntroShown", true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChitChat',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentThemeMode,
      home: Onboarding(),
      // home: isIntroShown == null ? Onboarding() : BottomBar(),
    );
  }
}
