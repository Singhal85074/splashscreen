import 'package:flutter/material.dart';
import 'dart:async';

class MyApp3 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp3> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp3())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFff2e63),
                gradient: LinearGradient(
                    colors: [Color(0xFF364f6b), Color(0xFF30e3ca)],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: Icon(
                  Icons.beach_access,
                  color: Colors.deepOrange,
                  size: 50.0,
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Text(
                "This is Simple text",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
