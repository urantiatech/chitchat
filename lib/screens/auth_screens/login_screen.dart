import 'package:chitchat/config/theme.dart';
import 'package:chitchat/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 72),
            CustomTextField(
              labelText: 'Email Address',
              onChanged: (String keyword) {
                print(keyword);
              },
            ),
            SizedBox(height: 35),
            CustomTextField(
              labelText: 'Password',
              onChanged: (String keyword) {
                print(keyword);
              },
            ),
          ],
        ),
      ),
    );
  }
}
