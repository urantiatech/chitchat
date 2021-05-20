import 'package:chitchat/config/theme.dart';
import 'package:chitchat/widgets/custom_popup_menu_item.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  void onTapMenu(String value) {
    switch (value) {
      case 'New Group':
        print('New Group Tapped');
        break;
      case 'Settings':
        print('Settings Tapped');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'ChitChat',
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            onSelected: onTapMenu,
            itemBuilder: (BuildContext context) {
              final String newGroup = 'New Group';
              final String settings = 'Settings';
              return [
                PopupMenuItem(
                  value: newGroup,
                  child: CustomPopupMenuItem(
                    title: newGroup,
                  ),
                ),
                PopupMenuItem(
                  value: settings,
                  child: CustomPopupMenuItem(
                    title: settings,
                  ),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}