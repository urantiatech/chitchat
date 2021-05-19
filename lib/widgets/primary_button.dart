import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool needWhiteBg;

  const PrimaryButton({
    @required this.title,
    @required this.onPressed,
    this.needWhiteBg = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isThemeDark
              ? Theme.of(context).primaryColorDark
              : needWhiteBg
                  ? whiteColor
                  : Theme.of(context).primaryColor,
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
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color:
                  needWhiteBg ? Theme.of(context).primaryColor : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
