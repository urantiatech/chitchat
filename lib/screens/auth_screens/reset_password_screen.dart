import 'package:chitchat/widgets/custom_textfield.dart';
import 'package:chitchat/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Reset Password',
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
                // autoFocus: true,
              ),
              SizedBox(height: 35),
              Text(
                'If this email is registered, we\'ll send instructions on how to reset your password. If you do not receive an email shortly, please come back and try again.',
                style: TextStyle(
                  color: Theme.of(context).errorColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 35),
              PrimaryButton(
                title: 'Reset Password',
                onPressed: () {},
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
