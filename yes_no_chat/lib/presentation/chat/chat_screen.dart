import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatarfiles.alphacoders.com/320/320272.jpg',
            ),
          ),
        ),
        title: const Text('Bojack'),
        centerTitle: false,
      ),
      body: Center(
          child: FilledButton.tonal(
              onPressed: () {}, child: const Text('Click me'))),
    );
  }
}
