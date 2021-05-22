import 'package:flutter/foundation.dart';

class ChatListItemModel {
  final String imgPath;
  final String senderName;
  final String lastMessage;
  final String lmTime;
  final int noOfUnread;

  ChatListItemModel({
    @required this.imgPath,
    @required this.senderName,
    @required this.lastMessage,
    @required this.lmTime,
    @required this.noOfUnread,
  });
}

ChatListItemModel m1 = ChatListItemModel(
  imgPath: 'assets/images/dp.jpg',
  senderName: 'Ross Geller',
  lastMessage: 'Hi, this is a random message made for testing',
  lmTime: '12:00 AM',
  noOfUnread: 3,
);
ChatListItemModel m2 = ChatListItemModel(
  imgPath: 'assets/images/dp.jpg',
  senderName: 'Mark Raffaello',
  lastMessage: 'Lorem ipsum dolor sit amet, dolor sit amet dolor sit amet',
  lmTime: '9:00 PM',
  noOfUnread: 0,
);

List<ChatListItemModel> listOfChat = [m1, m2];
