import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://pngimg.com/uploads/brad_pitt/brad_pitt_PNG17.png"),
          ),
        ),
        title: const Text("My love ❤️"),
        centerTitle: false,
      ),
    );
  }
}