import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final Function onChanged;
  final bool obscureText;

  const CustomTextField(
      {@required this.labelText,
      @required this.onChanged,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: labelText,
      ),
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      obscureText: obscureText,
      cursorColor: Theme.of(context).accentColor,
      onChanged: onChanged,
    );
  }
}
