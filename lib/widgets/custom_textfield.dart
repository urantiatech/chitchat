import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final Function onChanged;
  final bool obscureText;
  final bool autoFocus;

  const CustomTextField({
    @required this.labelText,
    @required this.onChanged,
    this.obscureText = false,
    this.autoFocus = false,
  });

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
      autofocus: autoFocus,
      obscureText: obscureText,
      cursorColor: Theme.of(context).accentColor,
      onChanged: onChanged,
    );
  }
}
