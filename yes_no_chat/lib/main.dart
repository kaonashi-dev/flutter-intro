import 'package:flutter/material.dart';
import 'package:yes_no_chat/config/theme/app_theme.dart';
import 'package:yes_no_chat/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: ChatScreen()
    );
  }
}