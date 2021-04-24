import 'package:flutter/material.dart';

class Conversation extends StatefulWidget {
  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'UNDER DEVELOPMENT',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
