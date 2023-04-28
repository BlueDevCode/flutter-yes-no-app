import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Ffreepngimg.com%2Fpng%2F147366-hairstyle-pitt-brad-free-clipart-hd&psig=AOvVaw0jOSXthQ47qlgjH_sOskMs&ust=1682797912003000&source=images&cd=vfe&ved=2ahUKEwic4brvrM3-AhXMSEEAHbTqACMQjRx6BAgAEAw"),
          ),
        ),
        title: const Text("My love ❤️"),
        centerTitle: false,
      ),
    );
  }
}