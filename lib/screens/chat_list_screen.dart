import 'package:chitchat/config/cc_icons_icons.dart';
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
        // titleSpacing: 28,
        title: Text(
          'ChitChat',
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(CcIcons.search),
            // icon: Icon(Icons.search_rounded),
            onPressed: () {},
          ),
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
