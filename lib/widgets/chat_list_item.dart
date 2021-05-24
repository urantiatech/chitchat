import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  final String imgPath;
  final String senderName;
  final String lastMessage;
  final String lmTime;
  final int noOfUnread;

  const ChatListItem({
    @required this.imgPath,
    @required this.senderName,
    @required this.lastMessage,
    @required this.lmTime,
    @required this.noOfUnread,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 28,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Theme.of(context).accentColor,
              backgroundImage: AssetImage(
                imgPath,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    senderName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: normalTextColor,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    lastMessage,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight:
                          noOfUnread > 0 ? FontWeight.w600 : FontWeight.w400,
                      color: subtleTextColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    lmTime,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: noOfUnread > 0
                          ? Theme.of(context).primaryColor
                          : subtleTextColor,
                    ),
                  ),
                  SizedBox(height: 1),
                  noOfUnread > 0
                      ? Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorDark,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text(
                              noOfUnread.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 22,
                          width: 22,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
