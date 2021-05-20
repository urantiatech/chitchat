import 'package:chitchat/config/theme.dart';
import 'package:chitchat/screens/auth_screens/login_screen.dart';
import 'package:chitchat/widgets/custom_text_button.dart';
import 'package:chitchat/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isThemeDark ? null : Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.173,
            ),
            Container(
              height: 201,
              width: 201,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isThemeDark ? Color(0xFF292929) : Color(0xFFFFE4EA),
              ),
              child: Center(
                child: Text(
                  'LOGO',
                  style: TextStyle(
                    color: normalTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Welcome to\nChitChat',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isThemeDark ? normalTextColor : whiteColor,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 32),
            Text(
              '“Connect with your friends and relatives\nwith the ChatApp messaging system”',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isThemeDark ? normalTextColor : whiteColor,
                height: 1.6,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            Spacer(),
            PrimaryButton(
              title: 'Get started',
              needWhiteBg: isThemeDark ? false : true,
              onPressed: () {
                // using push instead of pushReplacement for testing purpose
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
