import 'package:chitchat/screens/auth_screens/login_screen.dart';
import 'package:chitchat/widgets/custom_text_button.dart';
import 'package:chitchat/widgets/custom_textfield.dart';
import 'package:chitchat/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    fullHeight = MediaQuery.of(context).size.height;

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
                'Sign Up',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: fullHeight > 690 ? 72 : 35),
              // SizedBox(height: 72),
              CustomTextField(
                labelText: 'Name',
                onChanged: (String keyword) {
                  print(keyword);
                },
                // autoFocus: true,
              ),
              SizedBox(height: 35),
              CustomTextField(
                labelText: 'Email Address',
                onChanged: (String keyword) {
                  print(keyword);
                },
              ),
              SizedBox(height: 35),
              CustomTextField(
                labelText: 'Password',
                obscureText: true,
                onChanged: (String keyword) {
                  print(keyword);
                },
              ),
              SizedBox(height: 35),
              CustomTextField(
                labelText: 'Confirm Password',
                obscureText: true,
                onChanged: (String keyword) {
                  print(keyword);
                },
              ),
              SizedBox(height: 44),
              // Spacer(),
              PrimaryButton(
                title: 'Sign up',
                onPressed: () {},
              ),
              SizedBox(height: 6),
              Center(
                child: CustomTextButton(
                  title: 'Already have an account? Sign in',
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => LoginScreen(),
                    //   ),
                    // );
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
