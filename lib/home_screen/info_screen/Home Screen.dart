import 'package:flutter/material.dart';
import '../Call_screen/Call Screen.dart';
import '../Chats_screen/New Chat Screen.dart';
import '../../Login/Settings Screen.dart';
import '../status_screen/Status Screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF075E54),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "CHATS", ),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),

          ],
labelStyle: TextStyle(color: Colors.white),
        ),

        actions: [
          IconButton(icon: Icon(Icons.camera_alt), color: Colors.white, onPressed: () {}),
          IconButton(icon: Icon(Icons.search), color: Colors.white,onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert),color: Colors.white, onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
          }),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ChatsTab(),
          StatusTab(),
          CallsTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF075E54),
        child: Icon(Icons.message, color: Colors.white,),
        onPressed: () {},
      ),

    );
  }
}
