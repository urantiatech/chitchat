import 'package:chitchat/models/chat_list_item_model.dart';
import 'package:chitchat/widgets/chat_list_item.dart';
import 'package:chitchat/widgets/search_textfield.dart';
import 'package:flutter/material.dart';

class SearchChatListScreen extends StatefulWidget {
  const SearchChatListScreen({Key key}) : super(key: key);

  @override
  _SearchChatListScreenState createState() => _SearchChatListScreenState();
}

class _SearchChatListScreenState extends State<SearchChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: SearchTextField(
          title: 'Search',
          onChanged: (String keyword) {},
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          height: 1,
          indent: 28,
          endIndent: 28,
        ),
        itemCount: 1,
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
