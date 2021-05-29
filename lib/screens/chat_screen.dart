import 'package:chitchat/config/cc_icons_icons.dart';
import 'package:chitchat/models/chat_message.dart';
import 'package:chitchat/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String senderName;
  ChatScreen({@required this.senderName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String message;
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.senderName,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(CcIcons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ChatBubble(
                        messageText:
                            messageList.reversed.toList()[index].message,
                        isMine: messageList.reversed.toList()[index].isMe,
                        time: messageList.reversed.toList()[index].time,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  // height: 48,
                  margin: EdgeInsets.only(bottom: 30, left: 30, right: 13),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF3F8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextField(
                    // maxLines: 2,
                    // maxLength: 280,
                    // inputFormatters: [
                    //   LengthLimitingTextInputFormatter(280),
                    // ],
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      hintStyle: TextStyle(
                        // color: moreSubtleTextColor,
                        fontSize: 16,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      // color: normalTextColor,
                      fontSize: 16,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w400,
                    ),
                    cursorColor: Theme.of(context).accentColor,
                    onChanged: (String keyword) {
                      message = keyword;
                    },
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                margin: EdgeInsets.only(right: 30, bottom: 30),
                decoration: BoxDecoration(
                  // color: activeBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: IconButton(
                  // splashRadius: 28,
                  // splashColor: Color(0x113177E0),
                  onPressed: () {
                    setState(() {
                      setState(() {
                        ChatMessage chatMessage = ChatMessage(
                            message: message, isMe: true, time: '9:00 PM');
                        messageList.add(chatMessage);
                        _messageController.clear();
                      });
                      // message = message;
                    });
                  },
                  icon: Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
