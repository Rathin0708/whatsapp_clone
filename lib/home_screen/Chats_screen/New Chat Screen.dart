import 'package:flutter/material.dart';
import 'Chat Screen.dart';

class ChatsTab extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {'name': 'AMMA ❤️', 'message': 'Hey! How are you?'},
    {'name': '🧑SISTER', 'message': 'Let’s catch up later!'},
    {'name': 'DADY ❤️👀', 'message': 'Can you send the files?'},
    {'name': 'Instagram', 'message': '800957 is your Instagram verification code'},
    {'name': 'Raman', 'message': 'sent a photo'},
    {'name': 'Vijay ', 'message': 'Hello'},
    {'name': 'Flutter', 'message': 'Can you send the files?'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Text(chats[index]['name']![0]),
          ),
          title: Text(chats[index]['name']!),
          subtitle: Text(chats[index]['message']!),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(chatName: chats[index]['name']!),
              ),
            );
          },
        );
      },
    );
  }
}
