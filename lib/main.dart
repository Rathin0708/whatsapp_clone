import 'package:flutter/material.dart';
import 'Login/Signup Screen.dart';
import 'Splash Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'WhatsApp Clone',
        theme: ThemeData(
          primaryColor: Color(0xFF075E54),
          hintColor: Color(0xFF25D366),
        ),
        home: AnimatedSplashScreen(),
      ),
    );
  }
}
