import 'package:flutter/material.dart';

class ChatMessage {
  String message;
  bool isMe;
  String time;

  ChatMessage({
    @required this.message,
    @required this.isMe,
    @required this.time,
  });
}

ChatMessage m1 = ChatMessage(
  message:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
  isMe: false,
  time: '08:00 PM',
);

ChatMessage m2 = ChatMessage(
  message:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
  isMe: true,
  time: '09:00 PM',
);

List<ChatMessage> messageList = [m1, m2];
