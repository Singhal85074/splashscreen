import 'package:flutter/material.dart';
import './splashscreen1.dart';
import './splashscreen2.dart';
import './splashscreen3.dart';

var routes = <String, WidgetBuilder>{
  "/splashtwo": (BuildContext context) => MyApp2(),
  "/splashthree": (BuildContext context) => MyApp3()
};

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: routes,
  ));
}
