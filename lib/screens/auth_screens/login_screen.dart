import 'package:chitchat/screens/auth_screens/registration_screen.dart';
import 'package:chitchat/widgets/custom_text_button.dart';
import 'package:chitchat/widgets/custom_textfield.dart';
import 'package:chitchat/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// double statusBarHeight;
// double appBarPreferredHeight;
// double fullHeight;

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
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
                  onPressed: () {},
                ),
              ],
            ),
            // Flexible(
            //   flex: 1,
            //   fit: FlexFit.tight,
            //   child: Container(
            //     color: Colors.red[100],
            //     // height: 150,
            //   ),
            // ),
            // Flexible(
            //   flex: 3,
            //   child: Container(
            //     color: Colors.yellow[100],
            //     child: Column(
            //       children: [
            //         SizedBox(height: 35),
            //         // Spacer(),
            //         PrimaryButton(
            //           title: 'Sign In',
            //           onPressed: () {},
            //         ),
            //         SizedBox(height: 6),
            //         Center(
            //           child: CustomTextButton(
            //             title: 'Don’t have an account? Sign up',
            //             onPressed: () {},
            //           ),
            //         ),
            //         // SizedBox(height: 46),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: 35),
            Spacer(),
            // SizedBox(height: fullHeight * 0.2),
            PrimaryButton(
              title: 'Sign In',
              onPressed: () {},
            ),
            SizedBox(height: 6),
            Center(
              child: CustomTextButton(
                title: 'Don’t have an account? Sign up',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistrationScreen(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 46),
          ],
        ),
      ),
    );
  }
}
