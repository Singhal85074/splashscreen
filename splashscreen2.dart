import 'package:flutter/material.dart';
import 'dart:async';

class MyApp2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp2())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF08d9d6),
                gradient: LinearGradient(
                    colors: [Color(0xFFaa96da), Color(0xFFffc7c7)],
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
