import 'package:flutter/material.dart';
import 'package:imtihon2/homePage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "MainFont",
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}