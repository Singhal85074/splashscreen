import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF622f74),
                gradient: LinearGradient(
                    colors: [Color(0xFF6094e8), Color(0xFFde5cbc)],
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
