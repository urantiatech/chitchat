import 'package:chitchat/config/cc_icons_icons.dart';
import 'package:chitchat/config/theme.dart';
import 'package:chitchat/models/chat_message.dart';
import 'package:chitchat/screens/search_chat_screen.dart';
import 'package:chitchat/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String senderName;
  ChatScreen({@required this.senderName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String message = '';
  TextEditingController _messageController = TextEditingController();
  bool isTextfieldExpanded = false;

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
            splashRadius: splashRadius,
            icon: Icon(CcIcons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchChatScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
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
          ),
          Divider(
            height: 1,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              children: [
                isTextfieldExpanded
                    ? SizedBox()
                    : IconButton(
                        splashRadius: splashRadius,
                        icon: Icon(
                          CcIcons.mic,
                          color: Theme.of(context).primaryColor,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                isTextfieldExpanded
                    ? SizedBox()
                    : IconButton(
                        splashRadius: splashRadius,
                        icon: Icon(
                          CcIcons.image,
                          color: Theme.of(context).primaryColor,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                Flexible(
                  // Expanded(
                  // child: AnimatedContainer(
                  child: Container(
                    // height: 44,

                    margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    decoration: BoxDecoration(
                      color: chatFieldBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    // duration: Duration(seconds: 5),
                    child: TextField(
                      maxLines: 3,
                      minLines: 1,
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Message',
                        hintStyle: TextStyle(
                          color: subtleTextColor,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: normalTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      cursorColor: Theme.of(context).accentColor,
                      onChanged: (String keyword) {
                        if (keyword == '' || keyword == null) {
                          setState(() {
                            isTextfieldExpanded = false;
                          });
                        } else {
                          setState(() {
                            isTextfieldExpanded = true;
                          });
                        }
                        message = keyword;
                      },
                    ),
                  ),
                ),
                IconButton(
                  splashRadius: splashRadius,
                  icon: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      CcIcons.navigation,
                      color: Theme.of(context).primaryColor,
                      size: 28,
                    ),
                  ),
                  onPressed: () {
                    if (message != '') {
                      setState(() {
                        isTextfieldExpanded = false;
                        ChatMessage chatMessage = ChatMessage(
                            message: message, isMe: true, time: '9:00 PM');
                        messageList.add(chatMessage);
                        _messageController.clear();
                        message = '';
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
