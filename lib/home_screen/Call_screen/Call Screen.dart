import 'package:flutter/material.dart';

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.call, color: Colors.white),
          ),
          title: Text("AMMA ❤️"),
          subtitle: Text("Today, 10:00 AM"),
          trailing: Icon(Icons.call),
        ),
      ],
    );
  }
}
