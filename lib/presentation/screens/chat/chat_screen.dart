import 'package:flutter/material.dart';

import '../../widgets/chat/my_mesagge_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://pngimg.com/uploads/brad_pitt/brad_pitt_PNG17.png"),
          ),
        ),
        title: const Text("My love ❤️"),
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
            return MyMessageBubble();
          },)),
          Text("Hola")
        ],
          
        ),
      ),
    );
  }
}