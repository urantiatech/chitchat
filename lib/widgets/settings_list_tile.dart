import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  final IconData leadIconData;
  final String fieldTitle;
  final Widget tailWidget;

  const SettingsListTile({
    @required this.leadIconData,
    @required this.fieldTitle,
    this.tailWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          leadIconData,
          color: Theme.of(context).primaryColor,
          size: 40,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Text(
            fieldTitle,
            style: TextStyle(
              color: normalTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        tailWidget == null ? SizedBox() : tailWidget,
      ],
    );
  }
}
