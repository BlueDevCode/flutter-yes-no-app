
import 'package:flutter/material.dart';
import 'package:flutter_yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList =[
    Message(text: "Hi love", fromWho: FromWho.me),
    Message(text: "Are you back?", fromWho: FromWho.me)
  ];
  Future<void> sendMessage (String text) async {

  }
}