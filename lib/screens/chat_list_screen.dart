import 'package:chitchat/config/cc_icons_icons.dart';
import 'package:chitchat/config/theme.dart';
import 'package:chitchat/models/chat_list_item_model.dart';
import 'package:chitchat/screens/search_chat_list_screen.dart';
import 'package:chitchat/screens/settings_screen.dart';
import 'package:chitchat/widgets/chat_list_item.dart';
import 'package:chitchat/widgets/custom_popup_menu_item.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

Function chatListSetState;

class _ChatListScreenState extends State<ChatListScreen> {
  void updateState() {
    setState(() {});
  }

  void onTapMenu(String value) {
    switch (value) {
      case 'New Group':
        print('New Group Tapped');
        break;
      case 'Settings':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SettingsScreen(),
          ),
        );
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    chatListSetState = updateState;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            // splashRadius: splashRadius,
            icon: Icon(CcIcons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchChatListScreen(),
                ),
              );
            },
          ),
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            onSelected: onTapMenu,
            // child: IconButton(
            //   splashRadius: splashRadius,
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.more_vert_rounded,
            //   ),
            // ),
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
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          height: 1,
          indent: 28,
          endIndent: 28,
        ),
        itemCount: listOfChat.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatListItem(
            imgPath: listOfChat[index].imgPath,
            senderName: listOfChat[index].senderName,
            lastMessage: listOfChat[index].lastMessage,
            lmTime: listOfChat[index].lmTime,
            noOfUnread: listOfChat[index].noOfUnread,
          );
        },
      ),
    );
  }
}
