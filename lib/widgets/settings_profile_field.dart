import 'package:chitchat/config/cc_icons_icons.dart';
import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class SettingsProfileField extends StatelessWidget {
  final IconData leadIconData;
  final String fieldTitle;
  final String fieldData;

  const SettingsProfileField({
    @required this.leadIconData,
    @required this.fieldTitle,
    @required this.fieldData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            leadIconData,
            color: Theme.of(context).primaryColor,
            size: 40,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fieldTitle,
                  style: TextStyle(
                    color: subtleTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  fieldData,
                  style: TextStyle(
                    color: normalTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              // Icons.edit_outlined,
              CcIcons.edit,
              color: Theme.of(context).primaryColor,
            ),
            iconSize: 32,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
