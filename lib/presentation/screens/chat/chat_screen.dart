import 'package:flutter/material.dart';
import 'package:flutter_yes_no_app/domain/entities/message.dart';
import 'package:flutter_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:flutter_yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';

import '../../widgets/chat/my_mesagge_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 148, 148),
      appBar: AppBar(
        elevation: 10.00,
        shadowColor: Color.fromARGB(255, 70, 2, 2),
        backgroundColor: Color.fromARGB(255, 237, 112, 112),
        leading:   Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2,color: Color.fromARGB(255, 125, 10, 2))
            ),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage("https://pngimg.com/uploads/brad_pitt/brad_pitt_PNG17.png"),
            ),
          ),
        ),
        title: const Text(
          "My love ❤️",
          style: TextStyle(
            color: Color.fromARGB(255, 97, 9, 4),
          fontStyle: FontStyle.normal,
          fontSize: 25,
          fontWeight: FontWeight.w700

          ),),
        centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final chatProvider = context.watch <ChatProvider>();
    return SafeArea(
      
      child: Padding(
      
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          
        children: [
          
          Expanded(child: ListView.builder(
            itemCount: chatProvider.messageList.length,
            itemBuilder: (context, index) {
            final message = chatProvider.messageList[index];
            return (message.fromWho == FromWho.hers)
            ? HerMessageBubble()
            : MyMessageBubble(message:message);

          },)),
          MessageFieldBox()
        ],
          
        ),
      ),
    );
  }
}