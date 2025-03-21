import 'package:flutter/material.dart';

class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.add, color: Colors.white),
          ),
          title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text("B"),
          ),
          title: Text("Bro 😍"),
          subtitle: Text("Today, 8:30 AM"),
        ),
      ],
    );
  }
}
