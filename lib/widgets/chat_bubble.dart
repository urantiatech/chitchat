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
    return
        // isMine
        // ? Column(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Container(
        //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        //         margin: EdgeInsets.only(right: 30, left: 70, bottom: 8),
        //         decoration: BoxDecoration(
        //           // color: activeBlue,
        //           borderRadius: BorderRadius.only(
        //             topRight: Radius.circular(30),
        //             topLeft: Radius.circular(30),
        //             bottomLeft: Radius.circular(30),
        //           ),
        //         ),
        //         child: Text(
        //           messageText,
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontWeight: FontWeight.w400,
        //             fontSize: 16,
        //             fontFamily: 'SourceSerifPro',
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(right: 30, bottom: 16),
        //         child: Text(
        //           time,
        //           style: TextStyle(
        //             // color: subtleTextColor,
        //             fontWeight: FontWeight.w400,
        //             fontSize: 12,
        //             fontFamily: 'SourceSansPro',
        //           ),
        //         ),
        //       ),
        //     ],
        //   )
        // :
        Padding(
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
