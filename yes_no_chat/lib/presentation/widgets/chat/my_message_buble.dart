import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'My message test',
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(30)),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
