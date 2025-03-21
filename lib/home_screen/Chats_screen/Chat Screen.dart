import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String chatName;

  ChatScreen({required this.chatName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatName, style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF075E54),
        actions: [
          IconButton(icon: Icon(Icons.video_call, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.call, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(), // Add messages here
          ),
          SizedBox.square(dimension: 20),

          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.emoji_emotions), onPressed: () {}),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: InputBorder.none,

                    ),
                  ),
                ),
                IconButton(icon: Icon(Icons.send), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
