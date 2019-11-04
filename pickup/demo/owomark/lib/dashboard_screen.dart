import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:owomark/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {}),
        title: Text(
          'Owomark',
          textAlign: TextAlign.center,
          //textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 4.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email),
              iconSize: 30.0,
              color: Colors.blueGrey,
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  )),
        ],
      ),
      body: Column(),
    );
  }
}
