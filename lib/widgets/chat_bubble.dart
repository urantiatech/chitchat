import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String messageText;
  final bool isMine;
  final String time;
  ChatBubble({
    @required this.messageText,
    @required this.isMine,
    @required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: isMine ? 70 : 28,
        right: isMine ? 28 : 70,
        top: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment:
            isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            margin: EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              color: isMine
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              messageText,
              style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          Text(
            time,
            style: TextStyle(
              color: subtleTextColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
