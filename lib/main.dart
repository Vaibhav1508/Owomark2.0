import 'package:flutter/material.dart';
import 'package:owomark/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Owomark',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          accentColor: Color(0xFFFE9EB),
          hintColor: Colors.blueAccent),
      home: LoginScreen(),
    );
  }
}
