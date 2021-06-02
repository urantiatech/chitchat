import 'package:chitchat/screens/auth_screens/registration_screen.dart';
import 'package:chitchat/screens/auth_screens/reset_password_screen.dart';
import 'package:chitchat/screens/chat_list_screen.dart';
import 'package:chitchat/widgets/custom_text_button.dart';
import 'package:chitchat/widgets/custom_textfield.dart';
import 'package:chitchat/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// double statusBarHeight;
// double appBarPreferredHeight;
double fullHeight;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // statusBarHeight = MediaQuery.of(context).padding.top;
    // appBarPreferredHeight = AppBar().preferredSize.height;
    // fullHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 56),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  // autoFocus: true,
                ),
                SizedBox(height: 35),
                CustomTextField(
                  labelText: 'Password',
                  obscureText: true,
                  onChanged: (String keyword) {
                    print(keyword);
                  },
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton(
                      title: 'Forgot Password?',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),

                SizedBox(height: 35),
                // Spacer(),
                // SizedBox(height: fullHeight * 0.2),
                PrimaryButton(
                  title: 'Sign in',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatListScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 6),
                Center(
                  child: CustomTextButton(
                    title: 'Don’t have an account? Sign up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
