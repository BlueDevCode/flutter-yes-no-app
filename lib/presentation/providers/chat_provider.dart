
import 'package:flutter/material.dart';
import 'package:flutter_yes_no_app/domain/entities/message.dart';
import '../../config/helpers/yes_no_answer.dart';

class ChatProvider extends ChangeNotifier{
  final chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();
  List<Message> messageList =[
    Message(text: "Hi love", fromWho: FromWho.me),
    Message(text: "Are you back?", fromWho: FromWho.me)
  ];
  Future<void> sendMessage (String text) async {
    if ( text.isEmpty ) return;
   final newMessage = Message(text: text, fromWho: FromWho.me);
   messageList.add(newMessage);
   if (text.endsWith("?")){
     herReply();
   }
   notifyListeners();
   moveScrollToBottom();
   }

   Future<void> herReply() async{

   final herMessage = await getYesNoAnswer.getAnswer();
   messageList.add(herMessage);
   notifyListeners();
   moveScrollToBottom();


   }


   Future <void> moveScrollToBottom() async{
    await Future.delayed( const Duration(milliseconds: 100));
      chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), 
        curve: Curves.easeOut
        );
 
  }
}