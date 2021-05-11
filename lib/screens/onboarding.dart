import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isThemeDark ? null : Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Column(
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
                        fontFamily: 'Poppins',
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
                    fontFamily: 'Poppins',
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
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    isThemeDark
                        ? Theme.of(context).primaryColorDark
                        : whiteColor,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: Container(
                  height: 56,
                  child: Center(
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: isThemeDark
                            ? Colors.white
                            : Theme.of(context).primaryColor,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.096,
            //   child: Container(
            //     color: Colors.green,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
