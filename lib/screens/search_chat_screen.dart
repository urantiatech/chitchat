import 'package:chitchat/models/chat_message.dart';
import 'package:chitchat/widgets/chat_bubble.dart';
import 'package:chitchat/widgets/search_textfield.dart';
import 'package:flutter/material.dart';

class SearchChatScreen extends StatefulWidget {
  @override
  _SearchChatScreenState createState() => _SearchChatScreenState();
}

class _SearchChatScreenState extends State<SearchChatScreen> {
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
      body: ListView.builder(
        reverse: true,
        itemCount: messageList.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatBubble(
            messageText: messageList.reversed.toList()[index].message,
            isMine: messageList.reversed.toList()[index].isMe,
            time: messageList.reversed.toList()[index].time,
          );
        },
      ),
    );
  }
}
