import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas12/Telegram.dart';
import 'package:sanberappflutter/Tugas/Tugas13/HomeScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas13/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
