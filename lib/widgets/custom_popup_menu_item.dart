import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class CustomPopupMenuItem extends StatelessWidget {
  final String title;
  const CustomPopupMenuItem({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: normalTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
