import 'package:chitchat/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/theme.dart';

bool isIntroShown;
SharedPreferences sharedPreferences;
// ThemeMode currentThemeMode = ThemeMode.dark;
ThemeMode currentThemeMode = ThemeMode.light;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await chitChatInit();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Function globalSetState;

class _MyAppState extends State<MyApp> {
  void updateState() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    globalSetState = updateState;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChitChat',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentThemeMode,
      home: Onboarding(),
      // home: isIntroShown == null ? Onboarding() : ChatListScreen(),
    );
  }
}

chitChatInit() async {
  sharedPreferences = await SharedPreferences.getInstance();
  isIntroShown = sharedPreferences.getBool("isIntroShown");
  await sharedPreferences.setBool("isIntroShown", true);
}
