 import 'package:flutter/material.dart';
import 'package:flutter_yes_no_app/config/theme/app_theme.dart';
import 'package:flutter_yes_no_app/presentation/chat/chat_screen.dart';
 
 void main() => runApp(const MyApp());
 
 class MyApp extends StatelessWidget {
   const MyApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:3).theme(),
       title: 'Material App',
       home: const ChatScreen(),
        
     );
   }
 }