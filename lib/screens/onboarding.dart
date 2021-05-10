import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    color: Color(0xFF292929),
                  ),
                  child: Center(
                    child: Text(
                      'LOGO',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
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
                    color: Color(0xFFE0E0E0),
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
                    color: Color(0xFFE0E0E0),
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
                // child: Text('Get Started'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColorDark,
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
                      'Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
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
