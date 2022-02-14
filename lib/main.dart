import 'package:flutter/material.dart';
import 'package:flutter_chat_app/detail_chat.dart';
import 'package:flutter_chat_app/main_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainChat(),
    );
  }
}